.class public Landroid/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchIconUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Landroid/webkit/WebHistoryItem;

    monitor-enter v0

    .line 53
    :try_start_0
    sget v1, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v1, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 77
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 78
    iget v0, p1, Landroid/webkit/WebHistoryItem;->mId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 79
    return-void
.end method

.method constructor <init>([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 64
    const-class v0, Landroid/webkit/WebHistoryItem;

    monitor-enter v0

    .line 65
    :try_start_0
    sget v1, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v1, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native inflate(I[B)V
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    .locals 0
    .parameter "url"
    .parameter "originalUrl"
    .parameter "title"
    .parameter "favicon"
    .parameter "data"

    .prologue
    .line 213
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 217
    iput-object p5, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 218
    return-void
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/WebHistoryItem;

    invoke-direct {v0, p0}, Landroid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCustomData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method inflate(I)V
    .locals 1
    .parameter "nativeFrame"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebHistoryItem;->inflate(I[B)V

    .line 197
    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 160
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 171
    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 178
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrl:Ljava/lang/String;

    .line 179
    return-void
.end method
