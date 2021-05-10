from math import inf as infinity
from random import choice
import platform
import time
from os import system

HUMAN = -1
COMP = +1
board = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
]
HumanMagic=[]
CompMagic=[]
square=[
    [8,3,4],
    [1,5,9],
    [6,7,2],
]

def evaluate(state):
    if wins(state, COMP):
        score = +1
    elif wins(state, HUMAN):
        score = -1
    else:
        score = 0

    return score


def wins(state, player):
    win_state = [
        [state[0][0], state[0][1], state[0][2]],
        [state[1][0], state[1][1], state[1][2]],
        [state[2][0], state[2][1], state[2][2]],
        [state[0][0], state[1][0], state[2][0]],
        [state[0][1], state[1][1], state[2][1]],
        [state[0][2], state[1][2], state[2][2]],
        [state[0][0], state[1][1], state[2][2]],
        [state[2][0], state[1][1], state[0][2]],
    ]
    if [player, player, player] in win_state:
        return True
    else:
        return False


def game_over(state):
    return wins(state, HUMAN) or wins(state, COMP)


def empty_cells(state):
    cells = []
    for x, row in enumerate(state):
        for y, cell in enumerate(row):
            if cell == 0:
                cells.append([x, y])
    return cells


def valid_move(x, y):
    if [x, y] in empty_cells(board):
        return True
    else:
        return False


def set_move(x, y, player):
    if valid_move(x, y):
        board[x][y] = player
        if player == COMP:
            CompMagic.append(square[x][y])
        else:
            HumanMagic.append(square[x][y])
        return True
    else:
        return False


def MagicSquare():
    if (len(CompMagic) >= 2):
        for i in CompMagic:
            for j in CompMagic:
                if i != j and 15 - (i + j) > 0 and 15 - (i + j) <= 9 and (
                        15 - (i + j) not in CompMagic and 15 - (i + j) not in HumanMagic):
                    return 15 - (i + j)

    if (len(HumanMagic) >= 2):
        for i in HumanMagic:
            for j in HumanMagic:
                if i != j and 15 - (i + j) > 0 and 15 - (i + j) <= 9 and (
                        15 - (i + j) not in CompMagic and 15 - (i + j) not in HumanMagic):
                    return 15 - (i + j)

    if len(CompMagic) == 0 and len(HumanMagic) == 0:
        return 5

    if len(CompMagic) == 1 and len(HumanMagic) == 1:
        if HumanMagic[0] % 2 == 1:
            p = HumanMagic[0]
            if p == 3:
                return 9
            if p == 9:
                return 7
            if p == 7:
                return 1
            if p == 1:
                return 3

    if len(CompMagic) == 2 and len(HumanMagic) == 2:
        p = CompMagic[0]
        q = CompMagic[1]
        if q == 3:
            return 4
        if q == 9:
            return 2
        if q == 7:
            return 6
        if q == 1:
            return 8

    if (5 not in HumanMagic and 5 not in CompMagic):
        return 5

    if len(CompMagic) == 0 and len(HumanMagic) == 1:
        p = HumanMagic[0]
        if p == 5:
            return 8

    for i in range(1, 10):
        if i not in HumanMagic and i not in CompMagic:
            return i


def clean():
    os_name = platform.system().lower()
    if 'windows' in os_name:
        system('cls')
    else:
        system('clear')


def render(state, c_choice, h_choice):
    chars = {
        -1: h_choice,
        +1: c_choice,
        0: ' '
    }
    str_line = '---------------'

    print('\n' + str_line)
    for row in state:
        for cell in row:
            symbol = chars[cell]
            print(f'| {symbol} |', end='')
        print('\n' + str_line)


def ai_turn(c_choice, h_choice):
    depth = len(empty_cells(board))
    if depth == 0 or game_over(board):
        return

    clean()
    print(f'Computer turn [{c_choice}]')
    render(board, c_choice, h_choice)

    r = MagicSquare()
    print(f"chosen number in magic square is {r}")
    for x, row in enumerate(square):
        for y, cell in enumerate(row):
            if cell == r:
                i, j = x, y
                break

    set_move(i, j, COMP)
    time.sleep(1)


def human_turn(c_choice, h_choice):
    depth = len(empty_cells(board))
    if depth == 0 or game_over(board):
        return

    # Dictionary of valid moves
    move = -1
    moves = {
        1: [0, 0], 2: [0, 1], 3: [0, 2],
        4: [1, 0], 5: [1, 1], 6: [1, 2],
        7: [2, 0], 8: [2, 1], 9: [2, 2],
    }

    clean()
    print(f'Human turn [{h_choice}]')
    render(board, c_choice, h_choice)

    while move < 1 or move > 9:
        try:
            move = int(input('Use numpad (1..9): '))
            coord = moves[move]
            can_move = set_move(coord[0], coord[1], HUMAN)

            if not can_move:
                print('Bad move')
                move = -1
        except (EOFError, KeyboardInterrupt):
            print('Bye')
            exit()
        except (KeyError, ValueError):
            print('Bad choice')


def main():
    clean()
    h_choice = ''  # X or O
    c_choice = ''  # X or O
    first = ''  # if human is the first

    # Human chooses X or O to play
    while h_choice != 'O' and h_choice != 'X':
        try:
            print('')
            h_choice = input('Choose X or O\nChosen: ').upper()
        except (EOFError, KeyboardInterrupt):
            print('Bye')
            exit()
        except (KeyError, ValueError):
            print('Bad choice')

    # Setting computer's choice
    if h_choice == 'X':
        c_choice = 'O'
    else:
        c_choice = 'X'

    # Human may starts first
    clean()
    while first != 'Y' and first != 'N':
        try:
            first = input('First to start?[y/n]: ').upper()
        except (EOFError, KeyboardInterrupt):
            print('Bye')
            exit()
        except (KeyError, ValueError):
            print('Bad choice')

    # Main loop of this game
    while len(empty_cells(board)) > 0 and not game_over(board):
        if first == 'N':
            ai_turn(c_choice, h_choice)
            first = ''

        human_turn(c_choice, h_choice)
        ai_turn(c_choice, h_choice)

    # Game over message
    if wins(board, HUMAN):
        clean()
        print(f'Human turn [{h_choice}]')
        render(board, c_choice, h_choice)
        print('YOU WIN!')
    elif wins(board, COMP):
        clean()
        print(f'Computer turn [{c_choice}]')
        render(board, c_choice, h_choice)
        print('YOU LOSE!')
    else:
        clean()
        render(board, c_choice, h_choice)
        print('DRAW!')

    exit()


if __name__ == '__main__':
    main()
