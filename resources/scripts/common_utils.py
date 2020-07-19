

class ExceptionGuard(object):

    def __init__(self, message, guards=(BaseException,), msg_handler=print):
        self.message = message
        self.guards = guards
        self.msg_handler = msg_handler

    def __enter__(self):
        pass

    def __exit__(self, exc_type, exc_value, traceback):
        if __debug__:
            pass
        elif any((issubclass(exc_type, guarded) for guarded in self.guards)):
            self.msg_handler("Sorry, an exception happend:")
            self.msg_handler(exc_value)
            self.msg_handler(self.message)
            return True
