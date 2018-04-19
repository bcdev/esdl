import argparse
from typing import Sequence


def main(args: Sequence[str] = None):
    parser = argparse.ArgumentParser(description='ESA Earth System Data Lab Server')
    parser.add_argument('--verbose', '-v', action='store_true',
                        help='Log to console')
    parser.add_argument('args', metavar='ARGS', nargs='+',
                        help='any arguments')

    args = parser.parse_args(args)
    print('Ok: ', args.args)


if __name__ == '__main__':
    main()
