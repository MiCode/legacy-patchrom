.class public Lcom/google/android/util/AbstractMessageParser$Photo;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Photo"
.end annotation


# static fields
.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private album:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 957
    const-string v0, "http://picasaweb.google.com/([^/?#&]+)/+((?!searchbrowse)[^/?#&]+)(?:/|/photo)?(?:\\?[^#]*)?(?:#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Photo;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "album"
    .parameter "photo"
    .parameter "text"

    .prologue
    .line 965
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p4}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 966
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->user:Ljava/lang/String;

    .line 967
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->album:Ljava/lang/String;

    .line 968
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->photo:Ljava/lang/String;

    .line 969
    return-void
.end method

.method public static getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "user"
    .parameter "album"

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://picasaweb.google.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "user"
    .parameter "album"
    .parameter "photo"

    .prologue
    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://picasaweb.google.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/photo#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "user"

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://picasaweb.google.com/data/feed/api/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?category=album&alt=rss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;
    .locals 5
    .parameter "url"
    .parameter "text"

    .prologue
    .line 980
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Photo;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 981
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Photo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 4
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
    .line 989
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 990
    .local v0, info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$Photo;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhoto()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhoto()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    .end local p0
    :goto_0
    return-object v0

    .line 995
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method public isMedia()Z
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x1

    return v0
.end method
