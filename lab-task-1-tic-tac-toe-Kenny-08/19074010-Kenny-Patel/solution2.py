board = [' ', 2,2,2,2,2,2,2,2,2]

def printBoard(board):#printing board
    board2 =  [' ' for x in range(10)]
    for i in range(1,10):
        if board[i]==2:
            board2[i]=' '
        elif board[i]==3:
            board2[i]='X'
        else:
            board2[i]='O'
    print('   |   |')
    print(' ' + board2[1] + ' | ' + board2[2] + ' | ' + board2[3])
    print('   |   |')
    print('-----------')
    print('   |   |')
    print(' ' + board2[4] + ' | ' + board2[5] + ' | ' + board2[6])
    print('   |   |')
    print('-----------')
    print('   |   |')
    print(' ' + board2[7] + ' | ' + board2[8] + ' | ' + board2[9])
    print('   |   |')

def isWinner(bo, le):
    return (bo[7] == le and bo[8] == le and bo[9] == le) or (bo[4] == le and bo[5] == le and bo[6] == le) or (
                bo[1] == le and bo[2] == le and bo[3] == le) or (bo[1] == le and bo[4] == le and bo[7] == le) or (
                       bo[2] == le and bo[5] == le and bo[8] == le) or (
                       bo[3] == le and bo[6] == le and bo[9] == le) or (
                       bo[1] == le and bo[5] == le and bo[9] == le) or (bo[3] == le and bo[5] == le and bo[7] == le)


def make(board):
    if(board[5]==2):
        return 5
    else:
        if board[2]==2:
            return 2
        elif board[4]==2:
            return 4
        elif board[6]==2:
            return 6
        elif board[8]==2:
            return 8

def Posswin(p):
    if p=='X':
        num = 18
    else:
        num=50
    #for rows
    if(board[1]*board[2]*board[3]==num):
        if(board[1]==2):
            return 1
        elif (board[2]==2):
            return 2
        elif (board[3]==2):
            return 3
    elif(board[4]*board[5]*board[6]==num):
        if(board[4]==2):
            return 4
        elif (board[5]==2):
            return 5
        elif (board[6]==2):
            return 6
    elif (board[7] * board[8] * board[9] == num):
        if (board[7] == 2):
            return 7
        elif (board[8] == 2):
            return 8
        elif (board[9] == 2):
            return 9
    #for columns
    if (board[1] * board[4] * board[7] == num):
        if (board[1] == 2):
            return 1
        elif (board[4] == 2):
            return 4
        elif (board[7] == 2):
            return 7
    elif (board[2] * board[5] * board[8] == num):
        if (board[2] == 2):
            return 2
        elif (board[5] == 2):
            return 5
        elif (board[8] == 2):
            return 8
    elif (board[3] * board[6] * board[9] == num):
        if (board[3] == 2):
            return 3
        elif (board[6] == 2):
            return 6
        elif (board[9] == 2):
            return 9
    #for diagnols
    if (board[1] * board[5] * board[9] == num):
        if (board[1] == 2):
            return 1
        elif (board[5] == 2):
            return 5
        elif (board[9] == 2):
            return 9
    elif (board[3] * board[5] * board[7] == num):
        if (board[3] == 2):
            return 3
        elif (board[5] == 2):
            return 5
        elif (board[7] == 2):
            return 7
    return 0

def Go(n, turn):
    if turn%2==1:
        board[n]=3
    else:
        board[n]=5

def spaceIsFree(pos):
    return board[pos] == 2

def playerMove(turn,ch):
    run = True
    while run:
        if(ch=='X'):
            move = input('Please select a position to place an \'X\' (1-9): ')
        else:
            move = input('Please select a position to place an \'O\' (1-9): ')
        try:
            move = int(move)
            if move > 0 and move < 10:
                if spaceIsFree(move):
                    run = False
                    Go(move, turn)
                else:
                    print('Sorry, this space is occupied!')
            else:
                print('Please type a number within the range!')
        except:
            print('Please type a number!')


def main():
    print("This to Solution 2!")
    printBoard(board)

    turn = 1
    draw = True
    p = input("Play as X or O?")
    if p=='X':
        while(turn<=9):
            if(turn%2==1):
                if(isWinner(board,3)):
                    print("You Won")
                    draw = False
                    break
                else:
                    playerMove(turn,p)
                    printBoard(board)


            else:
                    if(turn<=3):
                        print('Computer placed an \'O\' in position',make(board),':')
                        Go(make(board),turn)
                        printBoard(board)
                    elif(turn == 4):
                        if(Posswin('X')==0):
                            print('Computer placed an \'O\' in position', make(board), ':')
                            Go(make(board), turn)
                            printBoard(board)
                        else:
                            print('Computer placed an \'O\' in position', Posswin('X'), ':')
                            Go(Posswin('X'), turn)
                            printBoard(board)
                    else:
                            if(Posswin('O')!=0):
                                print('Computer placed an \'O\' in position', Posswin('O'), ':')
                                Go(Posswin('O'), turn)
                                printBoard(board)
                            elif (Posswin('X')!=0):
                                print('Computer placed an \'O\' in position', Posswin('X'), ':')
                                Go(Posswin('X'), turn)
                                printBoard(board)
                            else:
                                print('Computer placed an \'O\' in position', make(board), ':')
                                Go(make(board), turn)
                                printBoard(board)
                    if (isWinner(board, 5)):
                        print("Computer has won")
                        draw = False
                        break
            turn = turn + 1
    else:
        while(turn<=9):
            if(turn%2==0):
                playerMove(turn,p)
                printBoard(board)
                if (isWinner(board,5)):
                    print("You Won")
                    draw = False
                    break
            else:
                if(turn ==1):
                    print('Computer placed an \'X\' in position', 1, ':')
                    Go(1, turn)
                    printBoard(board)
                elif (turn == 3):
                    if(spaceIsFree(9)):
                        print('Computer placed an \'X\' in position', 9, ':')
                        Go(9, turn)
                        printBoard(board)
                    else:
                        print('Computer placed an \'X\' in position', 3, ':')
                        Go(3, turn)
                        printBoard(board)
                elif (turn ==5):
                    if (Posswin('X')!=0):
                        print('Computer placed an \'X\' in position', Posswin('X'), ':')
                        Go(Posswin('X'), turn)
                        printBoard(board)

                    elif (Posswin('O')!=0):
                        print('Computer placed an \'X\' in position', Posswin('O'), ':')
                        Go(Posswin('O'), turn)
                        printBoard(board)
                    else:
                        if(spaceIsFree(7)):
                            print('Computer placed an \'X\' in position', 7, ':')
                            Go(7, turn)
                            printBoard(board)
                        else:
                            print('Computer placed an \'X\' in position', 3, ':')
                            Go(3, turn)
                            printBoard(board)

                else:
                    if (Posswin('X') != 0):
                        print('Computer placed an \'X\' in position', Posswin('X'), ':')
                        Go(Posswin('X'), turn)
                        printBoard(board)

                    elif (Posswin('O') != 0):
                        print('Computer placed an \'X\' in position', Posswin('O'), ':')
                        Go(Posswin('O'), turn)
                        printBoard(board)
                    else:

                        print('Computer placed an \'X\' in position', board.index(2), ':')
                        Go(board.index(2), turn)
                        printBoard(board)
            if(isWinner(board,3)):
                print("Computer has won")
                draw = False
                break
            turn = turn +1

    if(draw):
        print ("Its a Draw!")
if __name__ == '__main__':
    main()