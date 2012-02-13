.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mContentTypeParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method protected static addAttachToSmilText(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 9
    .parameter "body"

    .prologue
    const/4 v2, 0x0

    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .local v0, bSmilFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    move v8, v1

    .end local v1           #i:I
    .local v8, i:I
    move-object v1, v2

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    move v2, v8

    .end local v8           #i:I
    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .local v1, contentType:[B
    if-nez v1, :cond_1

    .end local v1           #contentType:[B
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move-object v1, v3

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_0

    .local v1, contentType:[B
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .local v4, strCType:Ljava/lang/String;
    const-string v1, "application/smil"

    .end local v1           #contentType:[B
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .end local v4           #strCType:Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_2

    :try_start_2
    const-string p0, "PduParser"

    .end local p0
    const-string v1, "cannot find smil part!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .end local v0           #bSmilFound:Z
    .end local v2           #i:I
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, bSmilFound:Z
    :goto_2
    return-void

    .restart local v0       #bSmilFound:Z
    .restart local v2       #i:I
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "PduParser"

    .end local p0           #body:Lcom/google/android/mms/pdu/PduBody;
    const-string v1, "null returns from part.getData()!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .end local v0           #bSmilFound:Z
    .local p0, bSmilFound:Z
    goto :goto_2

    .restart local v0       #bSmilFound:Z
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .local v4, smilInput:Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    .end local v2           #i:I
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, regionIDS:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .local v5, sourceS:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {v2, v5, v4}, Lcom/google/android/mms/pdu/PduParser;->parseSmilText(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    const-string p0, "PduParser"

    .end local p0           #body:Lcom/google/android/mms/pdu/PduBody;
    const-string v1, "region-ID count < 2 "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .end local v0           #bSmilFound:Z
    .local p0, bSmilFound:Z
    goto :goto_2

    .restart local v0       #bSmilFound:Z
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, imgRegionID:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, txtRegionID:Ljava/lang/String;
    const-string v2, "image"

    .end local v2           #regionIDS:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "img"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object v2, v1

    .local v2, tmp:Ljava/lang/String;
    move-object v1, v6

    move-object v2, v2

    .end local v6           #txtRegionID:Ljava/lang/String;
    .local v2, txtRegionID:Ljava/lang/String;
    move-object v6, v2

    .end local v2           #txtRegionID:Ljava/lang/String;
    .restart local v6       #txtRegionID:Ljava/lang/String;
    :cond_6
    const-string v2, "< */body *>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_7

    const-string p0, "PduParser"

    .end local p0           #body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #imgRegionID:Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! </body> not found in smilInput: \""

    .end local v2           #m:Ljava/util/regex/Matcher;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .end local v0           #bSmilFound:Z
    .local p0, bSmilFound:Z
    goto/16 :goto_2

    .restart local v0       #bSmilFound:Z
    .restart local v1       #imgRegionID:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .end local v2           #m:Ljava/util/regex/Matcher;
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, strBef:Ljava/lang/String;
    invoke-static {v2, p0, v5, v1, v6}, Lcom/google/android/mms/pdu/PduParser;->appendElement(Ljava/lang/String;Lcom/google/android/mms/pdu/PduBody;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .local p0, smil:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local p0           #smil:Ljava/lang/String;
    invoke-virtual {v3, p0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move p0, v0

    .end local v0           #bSmilFound:Z
    .local p0, bSmilFound:Z
    goto/16 :goto_2

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #smilInput:Ljava/lang/String;
    .end local v5           #sourceS:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6           #txtRegionID:Ljava/lang/String;
    .restart local v0       #bSmilFound:Z
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    .local v2, i:I
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :catch_0
    move-exception p0

    move-object v8, p0

    move p0, v0

    .end local v0           #bSmilFound:Z
    .local p0, bSmilFound:Z
    move-object v0, v8

    .end local v2           #i:I
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const-string v1, "PduParser"

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    const-string v2, "exception in addAttachToSmilText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .local v0, bSmilFound:Z
    .restart local v2       #i:I
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :catch_1
    move-exception p0

    move-object v1, v3

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    move v8, v0

    .end local v0           #bSmilFound:Z
    .local v8, bSmilFound:Z
    move-object v0, p0

    move p0, v8

    .end local v8           #bSmilFound:Z
    .local p0, bSmilFound:Z
    goto :goto_3

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v2           #i:I
    .end local p0           #bSmilFound:Z
    .restart local v0       #bSmilFound:Z
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    :catch_2
    move-exception p0

    move-object v1, v3

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    move v8, v0

    .end local v0           #bSmilFound:Z
    .restart local v8       #bSmilFound:Z
    move-object v0, p0

    move p0, v8

    .end local v8           #bSmilFound:Z
    .restart local p0       #bSmilFound:Z
    goto :goto_3

    .restart local v0       #bSmilFound:Z
    .restart local v2       #i:I
    .local p0, body:Lcom/google/android/mms/pdu/PduBody;
    :cond_8
    move-object v3, v1

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_1
.end method

.method protected static appendElement(Ljava/lang/String;Lcom/google/android/mms/pdu/PduBody;Ljava/util/Vector;)Ljava/lang/String;
    .locals 3
    .parameter "smil"
    .parameter "body"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, exclusiveSrc:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v0, "image"

    .local v0, imgRegionID:Ljava/lang/String;
    const-string v1, "text"

    .local v1, txtRegionID:Ljava/lang/String;
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/mms/pdu/PduParser;->appendElement(Ljava/lang/String;Lcom/google/android/mms/pdu/PduBody;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static appendElement(Ljava/lang/String;Lcom/google/android/mms/pdu/PduBody;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "smil"
    .parameter "body"
    .parameter
    .parameter "imgRegionID"
    .parameter "txtRegionID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, exclusiveSrc:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, hasText:Z
    const/4 v1, 0x1

    .local v1, hasImage:Z
    const/4 v3, 0x1

    .local v3, hasVideo:Z
    const/4 v0, 0x1

    .local v0, hasAudio:Z
    const/4 v5, 0x0

    .local v5, slideAdded:Z
    const/4 v4, 0x0

    .local v4, i:I
    move v6, v4

    .end local v4           #i:I
    .local v6, i:I
    move v8, v5

    .end local v5           #slideAdded:Z
    .local v8, slideAdded:Z
    move v5, v3

    .end local v3           #hasVideo:Z
    .local v5, hasVideo:Z
    move v4, v2

    .end local v2           #hasText:Z
    .local v4, hasText:Z
    move v3, v1

    .end local v1           #hasImage:Z
    .local v3, hasImage:Z
    move v2, v0

    .end local v0           #hasAudio:Z
    .local v2, hasAudio:Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v0

    if-ge v6, v0, :cond_c

    invoke-virtual {p1, v6}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    .local v0, contentType:[B
    if-nez v0, :cond_0

    move v0, v2

    .end local v2           #hasAudio:Z
    .local v0, hasAudio:Z
    move v1, v3

    .end local v3           #hasImage:Z
    .restart local v1       #hasImage:Z
    move v3, v5

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    move v2, v4

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    move v5, v8

    .end local v8           #slideAdded:Z
    .local v5, slideAdded:Z
    :goto_1
    add-int/lit8 v4, v6, 0x1

    .end local v6           #i:I
    .local v4, i:I
    move v6, v4

    .end local v4           #i:I
    .restart local v6       #i:I
    move v8, v5

    .end local v5           #slideAdded:Z
    .restart local v8       #slideAdded:Z
    move v5, v3

    .end local v3           #hasVideo:Z
    .local v5, hasVideo:Z
    move v4, v2

    .end local v2           #hasText:Z
    .local v4, hasText:Z
    move v3, v1

    .end local v1           #hasImage:Z
    .local v3, hasImage:Z
    move v2, v0

    .end local v0           #hasAudio:Z
    .local v2, hasAudio:Z
    goto :goto_0

    .local v0, contentType:[B
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2, v7}, Lcom/google/android/mms/pdu/PduParser;->sourcesContains(Ljava/util/Vector;Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .end local v2           #hasAudio:Z
    .local v0, hasAudio:Z
    move v1, v3

    .end local v3           #hasImage:Z
    .restart local v1       #hasImage:Z
    move v3, v5

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    move v2, v4

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    move v5, v8

    .end local v8           #slideAdded:Z
    .local v5, slideAdded:Z
    goto :goto_1

    .end local v1           #hasImage:Z
    .local v0, contentType:[B
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .restart local v4       #hasText:Z
    .local v5, hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .local v1, ctTypeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #contentType:[B
    if-eqz v0, :cond_3

    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    if-eqz v8, :cond_2

    const-string v0, "</par>"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "<par dur=\"5000ms\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v1, 0x0

    .end local v3           #hasImage:Z
    .local v1, hasImage:Z
    const/4 v2, 0x0

    .end local v5           #hasVideo:Z
    .local v2, hasVideo:Z
    const/4 v0, 0x0

    .local v0, hasAudio:Z
    const/4 v3, 0x1

    .end local v8           #slideAdded:Z
    .local v3, slideAdded:Z
    move v4, v3

    .end local v3           #slideAdded:Z
    .local v4, slideAdded:Z
    move v3, v2

    .end local v2           #hasVideo:Z
    .local v3, hasVideo:Z
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v2, "<text src=\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\" region=\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\" />"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v2, 0x1

    .local v2, hasText:Z
    move v5, v4

    .end local v4           #slideAdded:Z
    .local v5, slideAdded:Z
    goto :goto_1

    .end local v0           #hasAudio:Z
    .end local p0
    .local v1, ctTypeStr:Ljava/lang/String;
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .local v4, hasText:Z
    .local v5, hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_2
    const-string v0, ""

    goto :goto_2

    .restart local p0
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v3, :cond_4

    if-eqz v5, :cond_11

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    if-eqz v8, :cond_5

    const-string v0, "</par>"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "<par dur=\"5000ms\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v1, 0x0

    .end local v4           #hasText:Z
    .local v1, hasText:Z
    const/4 v2, 0x0

    .end local v5           #hasVideo:Z
    .local v2, hasVideo:Z
    const/4 v0, 0x0

    .restart local v0       #hasAudio:Z
    const/4 v3, 0x1

    .end local v8           #slideAdded:Z
    .local v3, slideAdded:Z
    move v4, v3

    .end local v3           #slideAdded:Z
    .local v4, slideAdded:Z
    move v3, v2

    .end local v2           #hasVideo:Z
    .local v3, hasVideo:Z
    move v2, v1

    .end local v1           #hasText:Z
    .local v2, hasText:Z
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v1, "<img src=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\" region=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\" />"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v1, 0x1

    .local v1, hasImage:Z
    move v5, v4

    .end local v4           #slideAdded:Z
    .local v5, slideAdded:Z
    goto/16 :goto_1

    .end local v0           #hasAudio:Z
    .end local p0
    .local v1, ctTypeStr:Ljava/lang/String;
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .local v4, hasText:Z
    .local v5, hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_5
    const-string v0, ""

    goto :goto_4

    .restart local p0
    :cond_6
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v2, :cond_7

    if-eqz v5, :cond_10

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    if-eqz v8, :cond_8

    const-string v0, "</par>"

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "<par dur=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->getDuration(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v1, 0x0

    .end local v4           #hasText:Z
    .local v1, hasText:Z
    const/4 v2, 0x0

    .end local v5           #hasVideo:Z
    .local v2, hasVideo:Z
    const/4 v0, 0x0

    .end local v3           #hasImage:Z
    .local v0, hasImage:Z
    const/4 v3, 0x1

    .end local v8           #slideAdded:Z
    .local v3, slideAdded:Z
    move v4, v3

    .end local v3           #slideAdded:Z
    .local v4, slideAdded:Z
    move v3, v2

    .end local v2           #hasVideo:Z
    .local v3, hasVideo:Z
    move v2, v1

    .end local v1           #hasText:Z
    .local v2, hasText:Z
    move v1, v0

    .end local v0           #hasImage:Z
    .local v1, hasImage:Z
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v0, "<audio src=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\" region=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\" />"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v0, 0x1

    .local v0, hasAudio:Z
    move v5, v4

    .end local v4           #slideAdded:Z
    .local v5, slideAdded:Z
    goto/16 :goto_1

    .end local v0           #hasAudio:Z
    .end local p0
    .local v1, ctTypeStr:Ljava/lang/String;
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .local v4, hasText:Z
    .local v5, hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_8
    const-string v0, ""

    goto :goto_6

    .restart local p0
    :cond_9
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v3, :cond_a

    if-nez v5, :cond_a

    if-eqz v2, :cond_e

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    if-eqz v8, :cond_b

    const-string v0, "</par>"

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "<par dur=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->getDuration(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v2, 0x0

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    const/4 v1, 0x0

    .end local v3           #hasImage:Z
    .local v1, hasImage:Z
    const/4 v0, 0x0

    .restart local v0       #hasAudio:Z
    const/4 v3, 0x1

    .end local v8           #slideAdded:Z
    .local v3, slideAdded:Z
    move v4, v3

    .end local v3           #slideAdded:Z
    .local v4, slideAdded:Z
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v3, "<video src=\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\" region=\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\" />"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    const/4 v3, 0x1

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    move v5, v4

    .end local v4           #slideAdded:Z
    .local v5, slideAdded:Z
    goto/16 :goto_1

    .end local v0           #hasAudio:Z
    .end local p0
    .local v1, ctTypeStr:Ljava/lang/String;
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .local v4, hasText:Z
    .local v5, hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_b
    const-string v0, ""

    goto :goto_8

    .end local v1           #ctTypeStr:Ljava/lang/String;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local p0
    :cond_c
    if-eqz v8, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string p1, "</par></body></smil>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    :goto_a
    return-object p0

    .restart local p1
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string p1, "</body></smil>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0
    goto :goto_a

    .restart local v1       #ctTypeStr:Ljava/lang/String;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local p1
    :cond_e
    move v0, v2

    .end local v2           #hasAudio:Z
    .restart local v0       #hasAudio:Z
    move v1, v3

    .end local v3           #hasImage:Z
    .local v1, hasImage:Z
    move v2, v4

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    move v4, v8

    .end local v8           #slideAdded:Z
    .local v4, slideAdded:Z
    goto :goto_9

    .end local v0           #hasAudio:Z
    .end local v1           #hasImage:Z
    .local v2, hasAudio:Z
    .restart local v3       #hasImage:Z
    .local v4, hasText:Z
    .restart local v8       #slideAdded:Z
    :cond_f
    move v0, v2

    .end local v2           #hasAudio:Z
    .restart local v0       #hasAudio:Z
    move v1, v3

    .end local v3           #hasImage:Z
    .restart local v1       #hasImage:Z
    move v3, v5

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    move v2, v4

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    move v5, v8

    .end local v8           #slideAdded:Z
    .local v5, slideAdded:Z
    goto/16 :goto_1

    .end local v0           #hasAudio:Z
    .local v1, ctTypeStr:Ljava/lang/String;
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .restart local v4       #hasText:Z
    .local v5, hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_10
    move v1, v3

    .end local v3           #hasImage:Z
    .local v1, hasImage:Z
    move v2, v4

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    move v4, v8

    .end local v8           #slideAdded:Z
    .local v4, slideAdded:Z
    move v3, v5

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    goto/16 :goto_7

    .local v1, ctTypeStr:Ljava/lang/String;
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .local v4, hasText:Z
    .restart local v5       #hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_11
    move v0, v2

    .end local v2           #hasAudio:Z
    .restart local v0       #hasAudio:Z
    move v3, v5

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    move v2, v4

    .end local v4           #hasText:Z
    .local v2, hasText:Z
    move v4, v8

    .end local v8           #slideAdded:Z
    .local v4, slideAdded:Z
    goto/16 :goto_5

    .end local v0           #hasAudio:Z
    .local v2, hasAudio:Z
    .local v3, hasImage:Z
    .local v4, hasText:Z
    .restart local v5       #hasVideo:Z
    .restart local v8       #slideAdded:Z
    :cond_12
    move v4, v8

    .end local v8           #slideAdded:Z
    .local v4, slideAdded:Z
    move v0, v2

    .end local v2           #hasAudio:Z
    .restart local v0       #hasAudio:Z
    move v1, v3

    .end local v3           #hasImage:Z
    .local v1, hasImage:Z
    move v3, v5

    .end local v5           #hasVideo:Z
    .local v3, hasVideo:Z
    goto/16 :goto_3
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 4
    .parameter "headers"

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .local v1, mmsVersion:I
    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, srContentType:[B
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .local p0, srTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_0

    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_1
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .local v0, scResponseStatus:I
    if-nez v0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .local p0, scTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_0

    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_2
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, niContentLocation:[B
    if-nez v0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    :cond_5
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_0

    :cond_6
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .local v0, niMessageClass:[B
    if-nez v0, :cond_7

    const/4 p0, 0x0

    goto :goto_0

    :cond_7
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_0

    :cond_8
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .local p0, niTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_3
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .local v0, nriStatus:I
    if-nez v0, :cond_9

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .local p0, nriTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, rcContentType:[B
    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_15

    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_5
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .local v0, diMessageId:[B
    if-nez v0, :cond_c

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .local v0, diStatus:I
    if-nez v0, :cond_d

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .local p0, aiTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_f

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .local v0, roMessageId:[B
    if-nez v0, :cond_10

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .local v0, roReadStatus:I
    if-nez v0, :cond_11

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_8
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_12

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .local v0, rrMessageId:[B
    if-nez v0, :cond_13

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .local v0, rrReadStatus:I
    if-nez v0, :cond_14

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/4 p0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .local v0, contentId:[B
    if-eqz v0, :cond_2

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2

    move v2, v4

    goto :goto_0

    .end local v0           #contentId:[B
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .local v1, contentType:[B
    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_3

    move v2, v4

    goto :goto_0

    .end local v1           #contentType:[B
    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method private static getContentTypeString(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .parameter "part"

    .prologue
    const-string v1, ""

    .local v1, ctTypeStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    .local v0, contentType:[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    .end local v1           #ctTypeStr:Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .end local v0           #contentType:[B
    .restart local v1       #ctTypeStr:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected static getDuration(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 9
    .parameter "audioVideoPart"

    .prologue
    const/16 v1, 0x1388

    .local v1, duration:I
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    const-string p0, "PduParser"

    .end local p0
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #data:[B
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration() returning: duration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    .end local v1           #duration:I
    .local p0, duration:I
    move v0, v1

    .end local p0           #duration:I
    .local v0, duration:I
    :goto_0
    return v0

    .local v0, data:[B
    .restart local v1       #duration:I
    .local p0, audioVideoPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .local v6, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .local v2, f:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .local v5, fosWillBeClosed:Z
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->getContentTypeString(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #audioVideoPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v4, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .local p0, extension:Ljava/lang/String;
    const-string v4, "~tmp"

    invoke-static {v4, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v3, 0x1

    .end local v5           #fosWillBeClosed:Z
    .local v3, fosWillBeClosed:Z
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #extension:Ljava/lang/String;
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .local p0, dur:Ljava/lang/String;
    if-eqz p0, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result p0

    .end local v1           #duration:I
    .local p0, duration:I
    :goto_1
    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v0           #data:[B
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    move-object v1, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move v2, v3

    .end local v3           #fosWillBeClosed:Z
    .local v2, fosWillBeClosed:Z
    :goto_4
    const-string v0, "PduParser"

    .end local v0           #f:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration() returning: duration = "

    .end local v2           #fosWillBeClosed:Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p0

    .end local p0           #duration:I
    .local v0, duration:I
    goto :goto_0

    .local v0, data:[B
    .local v2, f:Ljava/io/File;
    .restart local v3       #fosWillBeClosed:Z
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local p0       #duration:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PduParser"

    const-string v5, "failed to close FileOutputStream: "

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    const-string v7, ""

    goto :goto_5

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local p0           #duration:I
    .local v0, data:[B
    .local v1, duration:I
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fosWillBeClosed:Z
    :catch_2
    move-exception p0

    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    move v3, v5

    .end local v5           #fosWillBeClosed:Z
    .local v3, fosWillBeClosed:Z
    .local p0, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_5
    const-string v4, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get duration for:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_8
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_9
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    move p0, v1

    .end local v1           #duration:I
    .local p0, duration:I
    move-object v1, v2

    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    move v2, v3

    .end local v3           #fosWillBeClosed:Z
    .local v2, fosWillBeClosed:Z
    goto :goto_4

    .local v1, duration:I
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fosWillBeClosed:Z
    .local p0, ex:Ljava/lang/Exception;
    :cond_7
    :try_start_8
    const-string v7, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catch_3
    move-exception p0

    const-string v4, "PduParser"

    const-string v5, "failed to close FileOutputStream: "

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_4
    move-exception p0

    const-string v4, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_8
    const-string v7, ""

    goto :goto_a

    .end local p0           #ex:Ljava/lang/Exception;
    .local v0, data:[B
    .local v2, f:Ljava/io/File;
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fosWillBeClosed:Z
    :catchall_0
    move-exception p0

    move v1, v5

    .end local v5           #fosWillBeClosed:Z
    .local v1, fosWillBeClosed:Z
    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move-object v2, p0

    move-object p0, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local p0, fileOutputStream:Ljava/io/FileOutputStream;
    :goto_b
    if-eqz p0, :cond_9

    if-nez v1, :cond_9

    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .end local v1           #fosWillBeClosed:Z
    .end local p0           #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_9
    :goto_c
    if-eqz v0, :cond_a

    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .end local v0           #f:Ljava/io/File;
    :cond_a
    :goto_d
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #fosWillBeClosed:Z
    .restart local p0       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception p0

    .local p0, ex:Ljava/lang/Exception;
    const-string v1, "PduParser"

    .end local v1           #fosWillBeClosed:Z
    const-string v3, "failed to close FileOutputStream: "

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .end local p0           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception p0

    .restart local p0       #ex:Ljava/lang/Exception;
    const-string v1, "PduParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .end local v0           #f:Ljava/io/File;
    :goto_e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .restart local v0       #f:Ljava/io/File;
    :cond_b
    const-string v0, ""

    goto :goto_e

    .local v0, data:[B
    .local v1, duration:I
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fosWillBeClosed:Z
    .local p0, extension:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move v1, v5

    .end local v5           #fosWillBeClosed:Z
    .local v1, fosWillBeClosed:Z
    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move-object v2, p0

    move-object p0, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .local p0, fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_b

    .end local p0           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v0, data:[B
    .local v1, duration:I
    .restart local v2       #f:Ljava/io/File;
    .local v3, fosWillBeClosed:Z
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception p0

    move v1, v3

    .end local v3           #fosWillBeClosed:Z
    .local v1, fosWillBeClosed:Z
    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move-object v2, p0

    move-object p0, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local p0       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_b

    .local v1, duration:I
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fosWillBeClosed:Z
    .local p0, ex:Ljava/lang/Exception;
    :catchall_3
    move-exception p0

    move v1, v3

    .end local v3           #fosWillBeClosed:Z
    .local v1, fosWillBeClosed:Z
    move-object v8, p0

    move-object p0, v2

    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local p0, fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v8

    goto :goto_b

    .local v0, data:[B
    .local v1, duration:I
    .local v2, f:Ljava/io/File;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fosWillBeClosed:Z
    .local p0, extension:Ljava/lang/String;
    :catch_7
    move-exception p0

    move v3, v5

    .end local v5           #fosWillBeClosed:Z
    .restart local v3       #fosWillBeClosed:Z
    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move-object v2, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local p0           #extension:Ljava/lang/String;
    .local v0, data:[B
    .local v2, f:Ljava/io/File;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception p0

    move-object v0, v2

    .end local v2           #f:Ljava/io/File;
    .local v0, f:Ljava/io/File;
    move-object v2, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .local v0, data:[B
    .local v2, f:Ljava/io/File;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .local p0, dur:Ljava/lang/String;
    :cond_c
    move p0, v1

    .end local v1           #duration:I
    .local p0, duration:I
    goto/16 :goto_1
.end method

.method private static final getPureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    const-string v3, "cid:"

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "cid:"

    .local v0, prefixCid:Ljava/lang/String;
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cid:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    return-void
.end method

.method protected static mixedToSmil(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 6
    .parameter "headers"
    .parameter "body"

    .prologue
    const-string v5, "application/smil"

    const-string v4, "<smil>"

    const-string v0, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/><region id=\"Image\" left=\"0\" top=\"0\" width=\"320px\" height=\"320px\" fit=\"meet\"/></layout></head><body>"

    .local v0, smil:Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->appendElement(Ljava/lang/String;Lcom/google/android/mms/pdu/PduBody;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v2, "application/smil"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    const-string v2, "<smil>"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const-string v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    const-string v2, "<smil>"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const-string v2, "application/smil"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 7
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v2, 0xff

    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_8

    const/4 v1, 0x0

    .local v1, length:I
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1           #length:I
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-ne v1, v4, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .end local v3           #startPos:I
    .end local v4           #temp:I
    .restart local v1       #length:I
    .local v2, temp:I
    .restart local p0
    :catch_0
    move-exception p0

    .local p0, e:Ljava/lang/RuntimeException;
    const-string p0, "exceeded length!"

    .end local p0           #e:Ljava/lang/RuntimeException;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v1           #length:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_0
    return-object v0

    .restart local v0       #contentType:[B
    .local v2, length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v4, 0xff

    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .local v1, parameterLen:I
    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_3
    if-gez v1, :cond_7

    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_0

    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_4
    const/16 v5, 0x7f

    if-le v1, v5, :cond_6

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_1

    .local v0, index:I
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_1

    .restart local v1       #first:I
    :cond_6
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_0

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_7
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_2
    move-object v0, p0

    goto :goto_0

    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_8
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_9

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_2

    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_9
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 5
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .local v2, startPos:I
    const/4 v1, 0x0

    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_0
    if-lez v0, :cond_c

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, -0x1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_b

    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_1
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_0

    .local v1, param:I
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #type:[B
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto :goto_1

    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .local v0, type:[B
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .local v0, start:[B
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto :goto_1

    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_7

    :cond_6
    if-nez v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .local v1, charsetStr:[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #charsetStr:[B
    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto/16 :goto_1

    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_9
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .local v0, charset:I
    if-eqz p1, :cond_8

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .local v0, name:[B
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto/16 :goto_1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_b
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_c
    if-eqz v0, :cond_d

    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 10
    .parameter "pduDataStream"

    .prologue
    const/4 v9, 0x0

    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    const/4 v3, 0x0

    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_1
    and-int/lit16 v2, v5, 0xff

    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v7

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "exceeded length!"

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v7, v9

    goto :goto_0

    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .local v6, textString:[B
    if-eqz v0, :cond_4

    :try_start_1
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    move-object v7, v9

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    and-int/lit16 v0, v4, 0xff

    .local v0, count:I
    if-le v0, v8, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-wide/16 v2, 0x0

    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    shl-long/2addr v2, v8

    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 6
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p2, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .local v3, startPos:I
    const/4 v1, 0x0

    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v4, v1

    .end local v1           #tempPos:I
    .local v4, tempPos:I
    :goto_0
    if-lez v0, :cond_10

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, header:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_3
    add-int/lit8 v2, v0, -0x1

    .end local v0           #lastLen:I
    .local v2, lastLen:I
    const/16 v0, 0x7f

    if-le v1, v0, :cond_c

    sparse-switch v1, :sswitch_data_0

    const/4 v0, -0x1

    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v1

    .end local v1           #header:I
    if-ne v0, v1, :cond_b

    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p1, p0

    move p0, v2

    .end local v2           #lastLen:I
    .local p0, lastLen:I
    :goto_1
    return p1

    .restart local v1       #header:I
    .restart local v2       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .local v0, contentLocation:[B
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .end local v2           #lastLen:I
    .local v0, lastLen:I
    :goto_2
    move v4, v1

    .end local v1           #tempPos:I
    .restart local v4       #tempPos:I
    goto :goto_0

    .end local v0           #lastLen:I
    .local v1, header:I
    .restart local v2       #lastLen:I
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .local v0, contentId:[B
    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .end local v2           #lastLen:I
    .local v0, lastLen:I
    goto :goto_2

    .end local v0           #lastLen:I
    .local v1, header:I
    .restart local v2       #lastLen:I
    .restart local v4       #tempPos:I
    :sswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10d0017

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, contentDisposition:Z
    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .local v0, len:I
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v1           #header:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .local v2, value:I
    const/16 v1, 0x80

    if-ne v2, v1, :cond_8

    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_12

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .end local v2           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_6

    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .local v2, thisEndPos:I
    sub-int v1, v4, v2

    if-ge v1, v0, :cond_7

    sub-int v1, v4, v2

    sub-int/2addr v0, v1

    .local v0, last:I
    new-array v1, v0, [B

    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_7
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v2

    .end local v2           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    goto :goto_2

    .local v0, len:I
    .local v1, header:I
    .local v2, lastLen:I
    .local v4, tempPos:I
    :catch_0
    move-exception p0

    .local p0, e:Ljava/lang/RuntimeException;
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #e:Ljava/lang/RuntimeException;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "exceeded length! Header is "

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    move p1, p0

    move p0, v2

    .end local v2           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .end local v1           #header:I
    .local v2, value:I
    .local v4, thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_8
    const/16 v1, 0x81

    if-ne v2, v1, :cond_9

    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    :cond_9
    const/16 v1, 0x82

    if-ne v2, v1, :cond_a

    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .end local v0           #len:I
    .local v2, lastLen:I
    .local v4, tempPos:I
    :cond_b
    const/4 v0, 0x0

    .end local v2           #lastLen:I
    .local v0, lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .end local v0           #lastLen:I
    .local v1, header:I
    .restart local v2       #lastLen:I
    .restart local v4       #tempPos:I
    :cond_c
    const/16 v0, 0x20

    if-lt v1, v0, :cond_e

    const/16 v0, 0x7f

    if-gt v1, v0, :cond_e

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #header:I
    move-result-object v1

    .local v1, tempValue:[B
    const/4 v2, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v2           #lastLen:I
    .end local v4           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v2, v0, :cond_d

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    :cond_d
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    goto/16 :goto_2

    .end local v0           #lastLen:I
    .local v1, header:I
    .restart local v2       #lastLen:I
    .restart local v4       #tempPos:I
    :cond_e
    const/4 v0, -0x1

    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v1

    .end local v1           #header:I
    if-ne v0, v1, :cond_f

    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p1, p0

    move p0, v2

    .end local v2           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .restart local v2       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_f
    const/4 v0, 0x0

    .end local v2           #lastLen:I
    .restart local v0       #lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .end local v1           #tempPos:I
    .restart local v4       #tempPos:I
    :cond_10
    if-eqz v0, :cond_11

    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p1, p0

    move p0, v0

    .end local v0           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .restart local v0       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_11
    const/4 p0, 0x1

    move p1, p0

    move p0, v0

    .end local v0           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v2, value:I
    .local v4, thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_12
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v2

    .end local v2           #value:I
    .local v1, value:I
    goto/16 :goto_4

    .local v0, contentDisposition:Z
    .local v1, header:I
    .local v2, lastLen:I
    .local v4, tempPos:I
    :cond_13
    move v0, v2

    .end local v2           #lastLen:I
    .local v0, lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 10
    .parameter "pduDataStream"

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .local v2, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_e

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .local v4, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .local v3, dataLength:I
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .local v8, startPos:I
    if-gtz v8, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v1

    .local v1, contentType:[B
    if-eqz v1, :cond_4

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .end local v1           #contentType:[B
    :goto_2
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .local v1, name:[B
    if-eqz v1, :cond_2

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    :cond_2
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #name:[B
    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, charset:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #charset:Ljava/lang/Integer;
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, endPos:I
    sub-int v1, v8, v1

    sub-int v1, v4, v1

    .local v1, partHeaderLen:I
    if-lez v1, :cond_5

    invoke-static {p0, v7, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v1

    .end local v1           #partHeaderLen:I
    if-nez v1, :cond_6

    const/4 p0, 0x0

    goto :goto_0

    .local v1, contentType:[B
    :cond_4
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #contentType:[B
    const/4 v9, 0x0

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .local v1, partHeaderLen:I
    :cond_5
    if-gez v1, :cond_6

    const/4 p0, 0x0

    goto :goto_0

    .end local v1           #partHeaderLen:I
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    .end local v4           #headerLength:I
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .local v1, ctTypeStr:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, extension:Ljava/lang/String;
    if-eqz v1, :cond_8

    const-string v4, ""

    if-eq v1, v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .end local v8           #startPos:I
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #extension:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_7
    :goto_3
    if-lez v3, :cond_c

    new-array v4, v3, [B

    .local v4, partData:[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .local v1, partContentType:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const-string v3, "application/vnd.wap.multipart.alternative"

    .end local v3           #dataLength:I
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #partContentType:Ljava/lang/String;
    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .local v1, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .end local v4           #partData:[B
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_4
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    :goto_5
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto/16 :goto_1

    .local v1, extension:Ljava/lang/String;
    .restart local v3       #dataLength:I
    .restart local v6       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v8       #startPos:I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .end local v8           #startPos:I
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    .end local v1           #extension:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    goto :goto_3

    .end local v3           #dataLength:I
    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v4       #partData:[B
    :cond_9
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v3

    .local v3, partDataEncoding:[B
    if-eqz v3, :cond_f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .local v1, encoding:Ljava/lang/String;
    const-string v3, "base64"

    .end local v3           #partDataEncoding:[B
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v4}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .end local v4           #partData:[B
    .local v1, partData:[B
    :goto_6
    if-nez v1, :cond_b

    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v1, encoding:Ljava/lang/String;
    .restart local v4       #partData:[B
    .restart local p0
    :cond_a
    const-string v3, "quoted-printable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #encoding:Ljava/lang/String;
    if-eqz v1, :cond_f

    invoke-static {v4}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v1

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_6

    :cond_b
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local v1           #partData:[B
    :cond_c
    move-object v1, v7

    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_4

    :cond_d
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_5

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_e
    move-object p0, v0

    goto/16 :goto_0

    .restart local v4       #partData:[B
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_f
    move-object v1, v4

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_6
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseSmilText(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter "smilText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, regionIDS:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .local p1, sourceS:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const-string v4, "src"

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v2, "smil"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "src"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "img"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "src"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "src"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "src"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v2, "region"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "id"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v0, 0x0

    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    and-int/lit16 v0, v1, 0xff

    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    move v2, v0

    :goto_0
    return v2

    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static singlePartToMixed(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 18
    .parameter "contentType"
    .parameter "pduDataStream"

    .prologue
    const/16 v17, 0x0

    const/16 v16, 0x0

    if-nez p1, :cond_0

    move-object/from16 v13, v16

    :goto_0
    return-object v13

    :cond_0
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .local v4, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v10, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .local v6, dataLength:I
    if-gtz v6, :cond_1

    move-object/from16 v13, v16

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    :goto_1
    sget-object v13, Lcom/google/android/mms/pdu/PduParser;->mContentTypeParams:Ljava/util/HashMap;

    const/16 v14, 0x97

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v9, v0

    .local v9, name:[B
    if-eqz v9, :cond_2

    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    :cond_2
    sget-object v13, Lcom/google/android/mms/pdu/PduParser;->mContentTypeParams:Ljava/util/HashMap;

    const/16 v14, 0x81

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, charset:Ljava/lang/Integer;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_3
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    if-nez v13, :cond_4

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v13

    if-nez v13, :cond_4

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v13

    if-nez v13, :cond_4

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v13

    if-nez v13, :cond_4

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, extension:Ljava/lang/String;
    if-eqz v8, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .end local v8           #extension:Ljava/lang/String;
    :cond_4
    :goto_2
    new-array v11, v6, [B

    .local v11, partData:[B
    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v2, v17

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v12

    .local v12, partDataEncoding:[B
    if-eqz v12, :cond_5

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>([B)V

    .local v7, encoding:Ljava/lang/String;
    const-string v13, "base64"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v11}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v11

    .end local v7           #encoding:Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v11, :cond_9

    const-string v13, "Decode part data error!"

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object/from16 v13, v16

    goto/16 :goto_0

    .end local v5           #charset:Ljava/lang/Integer;
    .end local v9           #name:[B
    .end local v11           #partData:[B
    .end local v12           #partDataEncoding:[B
    :cond_6
    sget-object v13, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v13, v13, v17

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto/16 :goto_1

    .restart local v5       #charset:Ljava/lang/Integer;
    .restart local v8       #extension:Ljava/lang/String;
    .restart local v9       #name:[B
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    goto :goto_2

    .end local v8           #extension:Ljava/lang/String;
    .restart local v7       #encoding:Ljava/lang/String;
    .restart local v11       #partData:[B
    .restart local v12       #partDataEncoding:[B
    :cond_8
    const-string v13, "quoted-printable"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v11}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v11

    goto :goto_3

    .end local v7           #encoding:Ljava/lang/String;
    :cond_9
    invoke-virtual {v10, v11}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {v4, v10}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    move-object v13, v4

    goto/16 :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    new-array v0, p1, [B

    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method private static final sourcesContains(Ljava/util/Vector;Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 8
    .parameter
    .parameter "part"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, exclusiveSrc:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->stringFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    .local v5, sN:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->stringFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    .local v4, sFN:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->stringFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    .local v3, sCL:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->stringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    .local v2, sCID:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->getPureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->getPureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    const/4 v6, 0x1

    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static final stringFromByteArray([B)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 15

    .prologue
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_0
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .local v4, messageType:I
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/16 v12, 0x80

    if-eq v12, v4, :cond_3

    const/16 v12, 0x84

    if-ne v12, v4, :cond_7

    :cond_3
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x84

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .local v1, contentType:[B
    if-nez v1, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_5
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    :cond_6
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-static {v12, v13}, Lcom/google/android/mms/pdu/PduParser;->mixedToSmil(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    :cond_7
    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_0

    .restart local v1       #contentType:[B
    .restart local v2       #ctTypeStr:Ljava/lang/String;
    :cond_8
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v2, v12}, Lcom/google/android/mms/pdu/PduParser;->singlePartToMixed(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_a

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v13, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x84

    invoke-virtual {v12, v13, v14}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-static {v12, v13}, Lcom/google/android/mms/pdu/PduParser;->mixedToSmil(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_1

    :cond_b
    const-string v12, "unknown mms content type!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    :pswitch_0
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v11

    goto/16 :goto_0

    .end local v11           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v10, Lcom/google/android/mms/pdu/SendConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v10

    goto/16 :goto_0

    .end local v10           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v5, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v5

    goto/16 :goto_0

    .end local v5           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v6

    goto/16 :goto_0

    .end local v6           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->addAttachToSmilText(Lcom/google/android/mms/pdu/PduBody;)V

    new-instance v9, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v9, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .restart local v1       #contentType:[B
    if-nez v1, :cond_c

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v2       #ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    const-string v12, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_d
    move-object v12, v9

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v9           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v3

    goto/16 :goto_0

    .end local v3           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v0

    goto/16 :goto_0

    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v7

    goto/16 :goto_0

    .end local v7           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v8, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 32
    .parameter "pduDataStream"

    .prologue
    if-nez p1, :cond_0

    const/16 v28, 0x0

    .end local p0
    :goto_0
    return-object v28

    .restart local p0
    :cond_0
    const/4 v13, 0x1

    .local v13, keepParsing:Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .end local p0
    .local v12, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_1
    if-eqz v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_e

    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .local v11, headerField:I
    const/16 v28, 0x20

    move v0, v11

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    const/16 v28, 0x7f

    move v0, v11

    move/from16 v1, v28

    if-gt v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .local v5, bVal:[B
    goto :goto_1

    .end local v5           #bVal:[B
    :cond_2
    packed-switch v11, :pswitch_data_0

    :pswitch_0
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .local v17, messageType:I
    packed-switch v17, :pswitch_data_1

    :try_start_0
    move-object v0, v12

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v7

    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto :goto_0

    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v28, 0x0

    goto :goto_0

    :catch_1
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v17           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .local v25, value:I
    :try_start_1
    move-object v0, v12

    move/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v7

    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .local v25, value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .end local v25           #value:J
    :catch_4
    move-exception v28

    move-object/from16 v7, v28

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .restart local v25       #value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .end local v25           #value:J
    :catch_5
    move-exception v28

    move-object/from16 v7, v28

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v25

    .local v25, value:[B
    if-eqz v25, :cond_1

    :try_start_4
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    :catch_6
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .local v25, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_1

    :try_start_5
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    :catch_8
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .restart local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .local v4, address:[B
    if-eqz v4, :cond_4

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v21, str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, endIndex:I
    if-lez v8, :cond_3

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    :cond_3
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    :catch_a
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_b
    move-exception v28

    move-object/from16 v7, v28

    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :catch_c
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .local v24, token:I
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_f

    move-result-wide v22

    .local v22, timeValue:J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    :cond_5
    :try_start_a
    move-object v0, v12

    move-wide/from16 v1, v22

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_1

    :catch_d
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v22           #timeValue:J
    .end local v24           #token:I
    :catch_e
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "exceeded length!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v24       #token:I
    :catch_f
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v24           #token:I
    :pswitch_a
    const/4 v9, 0x0

    .local v9, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_11

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .local v10, fromToken:I
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v10

    if-ne v0, v1, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .restart local v4       #address:[B
    if-eqz v4, :cond_7

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v21       #str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #endIndex:I
    if-lez v8, :cond_6

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    :cond_6
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_12

    .end local v4           #address:[B
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_7
    :goto_2
    const/16 v28, 0x89

    :try_start_d
    move-object v0, v12

    move-object v1, v9

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    :catch_10
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v10           #fromToken:I
    :catch_11
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "exceeded length!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v4       #address:[B
    .restart local v8       #endIndex:I
    .restart local v10       #fromToken:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_12
    move-exception v28

    move-object/from16 v7, v28

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_8
    :try_start_e
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13

    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_13
    move-exception v28

    move-object/from16 v7, v28

    .restart local v7       #e:Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_14
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #fromToken:I
    :pswitch_b
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .local v15, messageClass:I
    const/16 v28, 0x80

    move v0, v15

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_9

    :try_start_f
    const-string v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_16

    goto/16 :goto_1

    :catch_15
    move-exception v28

    move-object/from16 v7, v28

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_9
    const/16 v28, 0x81

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_a

    :try_start_10
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    :catch_16
    move-exception v28

    move-object/from16 v7, v28

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_a
    const/16 v28, 0x82

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_b

    :try_start_11
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    :cond_b
    const/16 v28, 0x83

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_1

    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_16

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .local v16, messageClassString:[B
    if-eqz v16, :cond_1

    const/16 v28, 0x8a

    :try_start_12
    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_18

    goto/16 :goto_1

    :catch_17
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_18
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v15           #messageClass:I
    .end local v16           #messageClassString:[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .local v27, version:I
    const/16 v28, 0x8d

    :try_start_13
    move-object v0, v12

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_13
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1a

    goto/16 :goto_1

    :catch_19
    move-exception v7

    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1a
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #version:I
    :pswitch_d
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1c

    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1d

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .local v20, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_1

    const/16 v28, 0xa0

    :try_start_16
    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    :catch_1b
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1c
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "exceeded length!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1e
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    :try_start_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    :try_start_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    :try_start_19
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .local v18, perviouslySentDate:J
    const/16 v28, 0xa1

    move-object v0, v12

    move-wide/from16 v1, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_1f

    goto/16 :goto_1

    .end local v18           #perviouslySentDate:J
    :catch_1f
    move-exception v28

    move-object/from16 v7, v28

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_20
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "exceeded length!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_21
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    :try_start_1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_22

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    :catch_22
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "exceeded length!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_10
    :try_start_1b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_24

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    :try_start_1c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_23

    goto/16 :goto_1

    :catch_23
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_24
    move-exception v7

    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "exceeded length!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    :pswitch_12
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .local v6, contentType:[B
    if-eqz v6, :cond_d

    const/16 v28, 0x84

    :try_start_1d
    move-object v0, v12

    move-object v1, v6

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_26

    :cond_d
    :goto_3
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    sput-object v14, Lcom/google/android/mms/pdu/PduParser;->mContentTypeParams:Ljava/util/HashMap;

    const/4 v13, 0x0

    goto/16 :goto_1

    :catch_25
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_26
    move-exception v7

    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v6           #contentType:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v11           #headerField:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_e
    move-object/from16 v28, v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
