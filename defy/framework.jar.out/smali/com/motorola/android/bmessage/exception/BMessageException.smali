.class public Lcom/motorola/android/bmessage/exception/BMessageException;
.super Ljava/lang/Exception;
.source "BMessageException.java"


# static fields
.field public static final BMSG_EXCEPTION_CODE_BODY_CHARSET_INVALID:I = 0x4

.field public static final BMSG_EXCEPTION_CODE_BODY_ENCODING_UNSUPPORT:I = 0x5

.field public static final BMSG_EXCEPTION_CODE_BODY_LENGTH_INVALID:I = 0x6

.field public static final BMSG_EXCEPTION_CODE_BODY_PARTID_INVALID:I = 0x7

.field public static final BMSG_EXCEPTION_CODE_BUILDER_CALL_INVALID:I = 0xe

.field public static final BMSG_EXCEPTION_CODE_INPUT_CHARSET_UNSUPPORT:I = 0x1

.field public static final BMSG_EXCEPTION_CODE_INVALID_BENV_NEST:I = 0x14

.field public static final BMSG_EXCEPTION_CODE_INVALID_ENDOF_MSGBODY:I = 0xb

.field public static final BMSG_EXCEPTION_CODE_MISS_BEGIN_BMSG:I = 0xc

.field public static final BMSG_EXCEPTION_CODE_MMS_EMAIL_UTF8_8BIT_INVALID:I = 0x11

.field public static final BMSG_EXCEPTION_CODE_MSG_TYPE_UNSUPPORT:I = 0x3

.field public static final BMSG_EXCEPTION_CODE_NO_BBODY_IN_BENV:I = 0x13

.field public static final BMSG_EXCEPTION_CODE_NO_BENV_IN_BMSG:I = 0x12

.field public static final BMSG_EXCEPTION_CODE_NO_MSG_IN_BBODY:I = 0x15

.field public static final BMSG_EXCEPTION_CODE_READER_INVALID:I = 0xd

.field public static final BMSG_EXCEPTION_CODE_READLINE_LENGTH_INVALID:I = 0x9

.field public static final BMSG_EXCEPTION_CODE_SMS_NATIVE_ENCODING_INVALID:I = 0x10

.field public static final BMSG_EXCEPTION_CODE_SMS_UTF8_ENCODING_INVALID:I = 0xf

.field public static final BMSG_EXCEPTION_CODE_TYPE_CHARSET_ENCODING_NOT_MATCH:I = 0xa

.field public static final BMSG_EXCEPTION_CODE_UNEXPECTED_END_OF_FILE:I = 0x8

.field public static final BMSG_EXCEPTION_CODE_VERSION_UNSUPPORT:I = 0x2

.field public static final BMSG_EXCEPTION_LOG_BODY_CHARSET_INVALID:Ljava/lang/String; = "The \'charset\' got from bMessage object is invalid or incompatible with the input charset."

.field public static final BMSG_EXCEPTION_LOG_BODY_ENCODING_UNSUPPORT:Ljava/lang/String; = "The encoding of message body is not supported."

.field public static final BMSG_EXCEPTION_LOG_BODY_LENGTH_INVALID:Ljava/lang/String; = "The LENGTH property value of bMessage body contains invalid digits."

.field public static final BMSG_EXCEPTION_LOG_BODY_PARTID_INVALID:Ljava/lang/String; = "The PARTID property value of bMessage body contains invalid digits."

.field public static final BMSG_EXCEPTION_LOG_BUILDER_CALL_INVALID:Ljava/lang/String; = "Incorrect call for the BMessageBuilder class."

.field public static final BMSG_EXCEPTION_LOG_EMAIL_UTF8_8BIT_INVALID:Ljava/lang/String; = "EMAIL/MMS shall only have ENCODING of 8BIT."

.field public static final BMSG_EXCEPTION_LOG_ILLEGAL_BBODY_POSITION:Ljava/lang/String; = "\'BEGIN:BBODY\' appeared at illegal position."

.field public static final BMSG_EXCEPTION_LOG_ILLEGAL_BEGIN_VCARD_POSITION:Ljava/lang/String; = "\'BEGIN:VCARD\' appeared at illegal position."

.field public static final BMSG_EXCEPTION_LOG_ILLEGAL_END_VCARD_POSITION:Ljava/lang/String; = "\'END:VCARD\' appeared at illegal position."

.field public static final BMSG_EXCEPTION_LOG_ILLEGAL_ENV_POSITION:Ljava/lang/String; = "\'BEGIN:BENV\' appeared at illegal position."

.field public static final BMSG_EXCEPTION_LOG_ILLEGAL_MSG_POSITION:Ljava/lang/String; = "\'BEGIN:MSG\' appeared at illegal position."

.field public static final BMSG_EXCEPTION_LOG_INPUT_CHARSET_UNSUPPORT:Ljava/lang/String; = "Input \'charset\' application param is invalid."

.field public static final BMSG_EXCEPTION_LOG_INVALID_ENDOF_MSGBODY:Ljava/lang/String; = "Fail to read \'END:MSG\' at the end of MSG Body according to the length given."

.field public static final BMSG_EXCEPTION_LOG_MISS_BEGIN_BMSG:Ljava/lang/String; = "Failed to find \'BEGIN:BMSG\' in input bMessage Stream."

.field public static final BMSG_EXCEPTION_LOG_MSG_TYPE_UNSUPPORT:Ljava/lang/String; = "The type of the message is invalid or unsupported."

.field public static final BMSG_EXCEPTION_LOG_MULTI_ENV_UNSUPPORT:Ljava/lang/String; = "Multi or nested bMessage envelope found and is not supported."

.field public static final BMSG_EXCEPTION_LOG_NESTED_BMSG_UNSUPPORT:Ljava/lang/String; = "Nested bMessage is not supported."

.field public static final BMSG_EXCEPTION_LOG_READLINE_LENGTH_INVALID:Ljava/lang/String; = "The LENGTH property value is not consistent with the actual message body."

.field public static final BMSG_EXCEPTION_LOG_SMS_NATIVE_ENCODING_INVALID:Ljava/lang/String; = "SMS PDU shall have ENCODING property value in the bMessage."

.field public static final BMSG_EXCEPTION_LOG_SMS_UTF8_ENCODING_INVALID:Ljava/lang/String; = "Textual SMS shall not have ENCODING property value in the bMessage."

.field public static final BMSG_EXCEPTION_LOG_UNEXPECTED_END_OF_FILE:Ljava/lang/String; = "Unexpectly reach the end of file, this is an incomplete bMessage object."

.field public static final BMSG_EXCEPTION_LOG_VERSION_UNSUPPORT:Ljava/lang/String; = "The version of bMessage object is invalid or unsupported."


# instance fields
.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "message"

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/motorola/android/bmessage/exception/BMessageException;->mType:I

    return-void
.end method
