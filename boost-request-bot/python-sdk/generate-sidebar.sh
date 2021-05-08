#!/bin/bash
cat > _sidebar.md <<-END
* [<<](/boost-request-bot/discord/boost-request.md)
* [README](/boost-request-bot/python-sdk/README.md)
* Docs
END
find docs -type f | sed -E "s/docs\\/(.*).md/** [\1](\/boost-request-bot\/python-sdk\/docs\/\1.md)/g" >> _sidebar.md
