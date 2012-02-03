.class public Lcom/google/android/util/AbstractMessageParser$Video;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# static fields
.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private docid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 812
    const-string v0, "(?i)http://video\\.google\\.[a-z0-9]+(?:\\.[a-z0-9]+)?/videoplay\\?.*?\\bdocid=(-?\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Video;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "docid"
    .parameter "text"

    .prologue
    .line 819
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p2}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 820
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    .line 821
    return-void
.end method

.method public static getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "docid"

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://video.google.com/videofeed?type=docid&output=rss&sourceid=gtalk&docid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "docid"

    .prologue
    .line 853
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "docid"
    .parameter "extraParams"

    .prologue
    .line 858
    if-nez p1, :cond_1

    .line 859
    const-string p1, ""

    .line 863
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://video.google.com/videoplay?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "docid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 860
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;
    .locals 3
    .parameter "url"
    .parameter "text"

    .prologue
    .line 830
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Video;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 831
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Video;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/util/AbstractMessageParser$Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDocID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 840
    .local v0, info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$Video;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public isMedia()Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x1

    return v0
.end method
