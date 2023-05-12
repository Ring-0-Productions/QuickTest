APP=	        CocoaTest
SRCS=	        main.m
MK_WERROR=	no
CFLAGS+=	-g -fobjc-arc -O3
LDFLAGS+=	-framework AppKit -framework CoreGraphics \
                -framework Foundation -lobjc -lSystem -lutil

.include <rvn.app.mk>