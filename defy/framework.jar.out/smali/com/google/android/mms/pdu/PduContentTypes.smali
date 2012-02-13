.class public Lcom/google/android/mms/pdu/PduContentTypes;
.super Ljava/lang/Object;
.source "PduContentTypes.java"


# static fields
.field static final contentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x53

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*/*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text/*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/x-hdml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/x-ttml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/x-vCalendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/x-vCard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/vnd.wap.wml"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/vnd.wap.wmlscript"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text/vnd.wap.wta-event"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "multipart/*"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "multipart/mixed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "multipart/form-data"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "multipart/byterantes"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "multipart/alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "application/*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "application/java-vm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "application/x-www-form-urlencoded"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "application/x-hdmlc"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "application/vnd.wap.wmlc"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "application/vnd.wap.wmlscriptc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "application/vnd.wap.wta-eventc"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "application/vnd.wap.uaprof"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "application/vnd.wap.wtls-ca-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "application/vnd.wap.wtls-user-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "application/x-x509-ca-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "application/x-x509-user-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "image/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "image/tiff"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "application/vnd.wap.multipart.*"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "application/vnd.wap.multipart.mixed"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "application/vnd.wap.multipart.form-data"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "application/vnd.wap.multipart.byteranges"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "application/vnd.wap.multipart.alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "application/vnd.wap.wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "application/x-x968-cross-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "application/x-x968-ca-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "application/x-x968-user-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "text/vnd.wap.si"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "application/vnd.wap.sic"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "text/vnd.wap.sl"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "application/vnd.wap.slc"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "text/vnd.wap.co"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "application/vnd.wap.coc"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "application/vnd.wap.multipart.related"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "application/vnd.wap.sia"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "text/vnd.wap.connectivity-xml"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "application/pkcs7-mime"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "application/vnd.wap.hashed-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "application/vnd.wap.signed-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "application/vnd.wap.cert-response"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "application/xhtml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "application/wml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "application/vnd.wap.mms-message"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "application/vnd.wap.rollover-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "application/vnd.wap.locc+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "application/vnd.wap.loc+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "application/vnd.syncml.dm+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "application/vnd.syncml.dm+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "application/vnd.syncml.notification"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "application/vnd.wap.xhtml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "application/vnd.wv.csp.cir"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "application/vnd.oma.dd+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "application/vnd.oma.drm.message"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "application/vnd.oma.drm.content"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "application/vnd.oma.drm.rights+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "application/vnd.wv.csp+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "application/vnd.wv.csp+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "application/vnd.syncml.ds.notification"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "audio/*"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "video/*"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "application/vnd.oma.dd2+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "application/mikey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
