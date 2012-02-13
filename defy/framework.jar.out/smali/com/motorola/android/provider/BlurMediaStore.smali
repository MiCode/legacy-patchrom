.class public final Lcom/motorola/android/provider/BlurMediaStore;
.super Ljava/lang/Object;
.source "BlurMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/BlurMediaStore$MergedAudio;,
        Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;,
        Lcom/motorola/android/provider/BlurMediaStore$MergedAlbum;,
        Lcom/motorola/android/provider/BlurMediaStore$Album;,
        Lcom/motorola/android/provider/BlurMediaStore$AlbumColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$Recommendation;,
        Lcom/motorola/android/provider/BlurMediaStore$RecommendationColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$PlayHistory;,
        Lcom/motorola/android/provider/BlurMediaStore$PlayHistoryColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$News;,
        Lcom/motorola/android/provider/BlurMediaStore$NewsColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$Event;,
        Lcom/motorola/android/provider/BlurMediaStore$EventColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$Audio;,
        Lcom/motorola/android/provider/BlurMediaStore$AudioColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$Artist;,
        Lcom/motorola/android/provider/BlurMediaStore$ArtistColumns;,
        Lcom/motorola/android/provider/BlurMediaStore$ImageTags;,
        Lcom/motorola/android/provider/BlurMediaStore$TagsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field private static final TAG:Ljava/lang/String; = "BlurMediaStore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
