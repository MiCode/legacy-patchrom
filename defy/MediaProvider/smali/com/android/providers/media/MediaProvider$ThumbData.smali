.class Lcom/android/providers/media/MediaProvider$ThumbData;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbData"
.end annotation


# instance fields
.field album_id:J

.field albumart_uri:Landroid/net/Uri;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 3014
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$ThumbData;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3014
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;)V

    return-void
.end method
