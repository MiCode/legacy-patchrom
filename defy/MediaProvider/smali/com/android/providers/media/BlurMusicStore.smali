.class public Lcom/android/providers/media/BlurMusicStore;
.super Ljava/lang/Object;
.source "BlurMusicStore.java"


# static fields
.field static final BASE_ID:I = 0xdea8

.field static final BLUR_ALBUMS:I = 0xdeba

.field static final BLUR_ALBUM_ID:I = 0xdebb

.field static final BLUR_ARTISTS:I = 0xdea9

.field static final BLUR_ARTIST_EVENTS:I = 0xdead

.field static final BLUR_ARTIST_EVENT_ID:I = 0xdeb6

.field static final BLUR_ARTIST_ID:I = 0xdeb4

.field static final BLUR_ARTIST_NEWS:I = 0xdeb0

.field static final BLUR_ARTIST_NEWS_ID:I = 0xdeb7

.field static final BLUR_DASHBOARD_RECOMMENDATIONS:I = 0xdec4

.field static final BLUR_DASHBOARD_RECOMMENDATION_ID:I = 0xdec5

.field static final BLUR_EVENTS:I = 0xdeab

.field static final BLUR_EVENT_ID:I = 0xdeac

.field static final BLUR_MERGED_ALBUMS:I = 0xdebe

.field static final BLUR_MERGED_ALBUM_ID:I = 0xdebf

.field static final BLUR_MERGED_ARTISTS:I = 0xdebc

.field static final BLUR_MERGED_ARTIST_ID:I = 0xdebd

.field static final BLUR_MERGED_AUDIOS:I = 0xdec2

.field static final BLUR_MERGED_AUDIO_ID:I = 0xdec3

.field static final BLUR_NEEDS_SYNC:I = 0xdeb9

.field static final BLUR_NEWS:I = 0xdeae

.field static final BLUR_NEWS_ID:I = 0xdeaf

.field static final BLUR_RECOMMENDATIONS:I = 0xdeb3

.field static final BLUR_RECOMMENDATION_ID:I = 0xdeb8

.field static final BLUR_TRACKS:I = 0xdeaa

.field static final BLUR_TRACK_ID:I = 0xdeb5

.field private static final DROP_TABLE_IF_EXISTS:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MEDIA_AUTHORITY:Ljava/lang/String; = "media"

.field static final MERGED_BLUR_ALBUMS_PER_GENRE_ID:I = 0xdec1

.field static final MERGED_BLUR_ARTISTS_PER_GENRE_ID:I = 0xdec0

.field static final PLAYHISTORY_ID:I = 0xdeb1

.field public static final RECOMMENDATION_TYPE_ARTIST:I = 0x66

.field public static final RECOMMENDATION_TYPE_DASHBOARD:I = 0x67

.field public static final RECOMMENDATION_TYPE_TRACK:I = 0x65

.field static final TABLE_NAME_ALBUM:Ljava/lang/String; = "blur_album"

.field static final TABLE_NAME_ARTIST:Ljava/lang/String; = "blur_artist"

.field static final TABLE_NAME_AUDIO:Ljava/lang/String; = "blur_audio_meta"

.field static final TABLE_NAME_EVENT:Ljava/lang/String; = "blur_event"

.field static final TABLE_NAME_MERGEDBLURALBUM:Ljava/lang/String; = "mergedbluralbum"

.field static final TABLE_NAME_MERGEDBLURARTIST:Ljava/lang/String; = "mergedblurartist"

.field static final TABLE_NAME_MERGED_AUDIO:Ljava/lang/String; = "mergedaudio"

.field static final TABLE_NAME_NEWS:Ljava/lang/String; = "blur_news"

.field static final TABLE_NAME_PLAYHISTORY:Ljava/lang/String; = "blur_playhistory"

.field static final TABLE_NAME_RECOMMENDATION:Ljava/lang/String; = "blur_recommendation"

.field static final TRACK_RECOMMENDATIONS_ID:I = 0xdeb2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurMusic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/providers/media/BlurMusicStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/BlurMusicStore;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanupDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 3
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/16 v0, 0x51

    if-ge p2, v0, :cond_0

    .line 48
    const-string v0, "BlurMusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating database from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dropping tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "DROP TABLE IF EXISTS blur_artist"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "DROP TABLE IF EXISTS blur_audio_meta"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "DROP TABLE IF EXISTS blur_event"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "DROP TABLE IF EXISTS blur_news"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "DROP TABLE IF EXISTS blur_playhistory"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "DROP TABLE IF EXISTS blur_recommendation"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "DROP TABLE IF EXISTS blur_album"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "DROP TRIGGER IF EXISTS blur_artist_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "DROP TRIGGER IF EXISTS blur_artist_cleanup2"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "DROP TRIGGER IF EXISTS blur_audio_meta_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "DROP TRIGGER IF EXISTS blur_event_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "DROP TRIGGER IF EXISTS blur_news_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "DROP TRIGGER IF EXISTS blur_playhistory_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "DROP TRIGGER IF EXISTS blur_recommendation_audio_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "DROP TRIGGER IF EXISTS blur_album_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTableAndWhereForUpdate(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)Z
    .locals 9
    .parameter "uri"
    .parameter "match"
    .parameter "where"
    .parameter "out"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const-string v8, " artist_id = "

    const-string v7, " AND "

    const-string v5, "_id = "

    .line 614
    const/4 v0, 0x1

    .line 615
    .local v0, handled:Z
    packed-switch p1, :pswitch_data_0

    .line 674
    :pswitch_0
    const/4 v0, 0x0

    .line 677
    .end local p0
    :goto_0
    return v0

    .line 617
    .restart local p0
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 618
    .local v1, id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 620
    .end local v1           #id:Ljava/lang/String;
    :pswitch_2
    const-string v2, "blur_audio_meta"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 624
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 626
    :pswitch_4
    const-string v2, "blur_artist"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 630
    .restart local p0
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 632
    :pswitch_6
    const-string v2, "blur_album"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 636
    .restart local p0
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 638
    :pswitch_8
    const-string v2, "mergedaudio"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 642
    .restart local p0
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 644
    :pswitch_a
    const-string v2, "blur_event"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 648
    .restart local p0
    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 650
    :pswitch_c
    const-string v2, "blur_news"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 654
    .restart local p0
    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 656
    :pswitch_e
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 659
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " artist_id = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 660
    const-string v2, "blur_event"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 664
    .restart local p0
    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 666
    :pswitch_10
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 669
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " artist_id = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 670
    const-string v2, "blur_news"

    iput-object v2, p3, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0xdea9
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method static insert(ILandroid/net/Uri;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Landroid/net/Uri;
    .locals 10
    .parameter "match"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const-string v9, "blur_event"

    const-string v8, "artist_id"

    const-string v7, "_id"

    .line 437
    packed-switch p0, :pswitch_data_0

    .line 609
    :cond_0
    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 440
    :pswitch_1
    const-string v3, "type"

    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string v3, "blur_recommendation"

    const-string v4, "_id"

    invoke-virtual {p3, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 442
    .local v1, rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 443
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 449
    .end local v1           #rowId:J
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    .local v0, id:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v3, "type"

    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v3, "blur_recommendation"

    const-string v4, "_id"

    invoke-virtual {p3, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 454
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 455
    goto :goto_0

    .line 462
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_3
    const-string v3, "blur_artist"

    const-string v4, "artist_id"

    invoke-virtual {p3, v3, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 464
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 465
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 471
    .end local v1           #rowId:J
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "artist_id"

    invoke-virtual {p2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v3, "blur_artist"

    const-string v4, "artist_id"

    invoke-virtual {p3, v3, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 475
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 476
    goto :goto_0

    .line 482
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_5
    const-string v3, "blur_album"

    const-string v4, "album_id"

    invoke-virtual {p3, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 483
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 484
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 490
    .end local v1           #rowId:J
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "album_id"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v3, "blur_album"

    const-string v4, "artist_id"

    invoke-virtual {p3, v3, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 494
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 495
    goto/16 :goto_0

    .line 501
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_7
    const-string v3, "blur_event"

    const-string v3, "_id"

    invoke-virtual {p3, v9, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 503
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 504
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 510
    .end local v1           #rowId:J
    :pswitch_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "blur_event"

    const-string v3, "_id"

    invoke-virtual {p3, v9, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 514
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 515
    goto/16 :goto_0

    .line 521
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "artist_id"

    invoke-virtual {p2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v3, "blur_event"

    const-string v3, "_id"

    invoke-virtual {p3, v9, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 525
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 526
    goto/16 :goto_0

    .line 532
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "artist_id"

    invoke-virtual {p2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #id:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 535
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v3, "blur_event"

    const-string v3, "_id"

    invoke-virtual {p3, v9, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 538
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 539
    goto/16 :goto_0

    .line 545
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_b
    const-string v3, "blur_news"

    const-string v4, "_id"

    invoke-virtual {p3, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 547
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 548
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 554
    .end local v1           #rowId:J
    :pswitch_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v3, "blur_news"

    const-string v4, "_id"

    invoke-virtual {p3, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 558
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 559
    goto/16 :goto_0

    .line 565
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "artist_id"

    invoke-virtual {p2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v3, "blur_news"

    const-string v4, "_id"

    invoke-virtual {p3, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 569
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 570
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 576
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "artist_id"

    invoke-virtual {p2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #id:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 579
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v3, "blur_news"

    const-string v4, "_id"

    invoke-virtual {p3, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 582
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 583
    goto/16 :goto_0

    .line 589
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #rowId:J
    :pswitch_f
    const-string v3, "blur_audio_meta"

    const-string v4, "audio_id"

    invoke-virtual {p3, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 590
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 591
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 597
    .end local v1           #rowId:J
    :pswitch_10
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    .restart local v0       #id:Ljava/lang/String;
    const-string v3, "audio_id"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v3, "blur_audio_meta"

    const-string v4, "audio_id"

    invoke-virtual {p3, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 600
    .restart local v1       #rowId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    move-object v3, p1

    .line 601
    goto/16 :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0xdea9
        :pswitch_3
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_10
        :pswitch_a
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static populateQueryBuilder(Landroid/database/sqlite/SQLiteQueryBuilder;ILandroid/net/Uri;)Z
    .locals 10
    .parameter "qb"
    .parameter "table"
    .parameter "uri"

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x4

    const/4 v5, 0x2

    const-string v8, "artist_id = "

    const-string v6, "_id = "

    .line 290
    const/4 v2, 0x1

    .line 291
    .local v2, match:Z
    packed-switch p1, :pswitch_data_0

    .line 410
    :pswitch_0
    const/4 v2, 0x0

    .line 413
    :goto_0
    return v2

    .line 295
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 298
    :pswitch_2
    const-string v3, "blur_recommendation"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 299
    const-string v3, "type=103"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 306
    :pswitch_4
    const-string v3, "blur_event"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_5
    const-string v3, "mergedblurartist"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in (select Distinct a.artist_id from audio a, audio_genres_map gm where a._id = gm.audio_id AND gm.genre_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :pswitch_6
    const-string v3, "mergedbluralbum"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in (select Distinct a.album_id from audio a, audio_genres_map gm where a._id = gm.audio_id AND gm.genre_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    :pswitch_7
    const-string v3, "audio a"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 327
    const-string v3, "NOT EXISTS ( SELECT audio_id from blur_audio_meta where audio_id = a._id AND amgid NOT NULL)"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 334
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 337
    :pswitch_9
    const-string v3, "mergedaudio"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 344
    :pswitch_b
    const-string v3, "blur_album"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :pswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 350
    :pswitch_d
    const-string v3, "blur_news"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :pswitch_e
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 358
    .end local v1           #id:Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    .local v0, artistId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_id = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 360
    const-string v3, "blur_event"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    .end local v0           #artistId:Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    .restart local v1       #id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 369
    .end local v1           #id:Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    .restart local v0       #artistId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_id = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 371
    const-string v3, "blur_news"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    .end local v0           #artistId:Ljava/lang/String;
    :pswitch_12
    const-string v3, "type = 101"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 379
    :pswitch_13
    const-string v3, "blur_recommendation"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :pswitch_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_id = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 386
    :pswitch_15
    const-string v3, "blur_artist"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :pswitch_16
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    .restart local v1       #id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 394
    .end local v1           #id:Ljava/lang/String;
    :pswitch_17
    const-string v3, "blur_audio_meta"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :pswitch_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 400
    :pswitch_19
    const-string v3, "mergedbluralbum"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :pswitch_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 406
    :pswitch_1b
    const-string v3, "mergedblurartist"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0xdea9
        :pswitch_15
        :pswitch_17
        :pswitch_4
        :pswitch_3
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static recreateBlurAlbumView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 718
    sget-object v0, Lcom/android/providers/media/BlurMusicStore;->LOGTAG:Ljava/lang/String;

    const-string v1, "recreating mergedbluralbum "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v0, "DROP VIEW IF EXISTS mergedbluralbum"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 720
    const-string v0, "DROP TRIGGER IF EXISTS mergedbluralbum_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 721
    const-string v0, "CREATE VIEW IF NOT EXISTS mergedbluralbum as SELECT * FROM album_info LEFT OUTER JOIN blur_album ON blur_album.album_id=album_info._id; "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mergedbluralbum_delete INSTEAD OF DELETE ON mergedbluralbum BEGIN DELETE from blur_album where artist_id=old.artist_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private static recreateBlurArtistView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 684
    sget-object v0, Lcom/android/providers/media/BlurMusicStore;->LOGTAG:Ljava/lang/String;

    const-string v1, "recreating mergedbluralbum "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v0, "DROP VIEW IF EXISTS mergedblurartist"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    const-string v0, "DROP TRIGGER IF EXISTS mergedblurartist_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 687
    const-string v0, "CREATE VIEW IF NOT EXISTS mergedblurartist as SELECT * FROM artist_info LEFT OUTER JOIN blur_artist ON artist_info._id=blur_artist.artist_id; "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 691
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mergedblurartist_delete INSTEAD OF DELETE ON mergedblurartist BEGIN DELETE from blur_artist where artist_id=old.artist_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method private static recreateBlurAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 699
    sget-object v0, Lcom/android/providers/media/BlurMusicStore;->LOGTAG:Ljava/lang/String;

    const-string v1, "recreating mergedaudio"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v0, "DROP VIEW IF EXISTS mergedaudio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    const-string v0, "DROP TRIGGER IF EXISTS mergedaudio_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    const-string v0, "CREATE VIEW IF NOT EXISTS mergedaudio as SELECT * FROM audio LEFT OUTER JOIN blur_audio_meta ON audio._id=blur_audio_meta.audio_id; "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 708
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mergedaudio_delete INSTEAD OF DELETE ON mergedaudio BEGIN DELETE from blur_audio_meta where audio_id=old.audio_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public static registerUriMatcher(Landroid/content/UriMatcher;)V
    .locals 3
    .parameter "uriMatcher"

    .prologue
    const-string v2, "media"

    .line 234
    const-string v0, "media"

    const-string v0, "*/blurartist"

    const v1, 0xdea9

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    const-string v0, "media"

    const-string v0, "*/blurartist/#"

    const v1, 0xdeb4

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    const-string v0, "media"

    const-string v0, "*/bluraudio"

    const v1, 0xdeaa

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    const-string v0, "media"

    const-string v0, "*/bluraudio/#"

    const v1, 0xdeb5

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    const-string v0, "media"

    const-string v0, "*/event"

    const v1, 0xdeab

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    const-string v0, "media"

    const-string v0, "*/event/#"

    const v1, 0xdeac

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    const-string v0, "media"

    const-string v0, "*/blurartist/#/event"

    const v1, 0xdead

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    const-string v0, "media"

    const-string v0, "*/blurartist/#/event/#"

    const v1, 0xdeb6

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    const-string v0, "media"

    const-string v0, "*/news"

    const v1, 0xdeae

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    const-string v0, "media"

    const-string v0, "*/news/#"

    const v1, 0xdeaf

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    const-string v0, "media"

    const-string v0, "*/blurartist/#/news"

    const v1, 0xdeb0

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    const-string v0, "media"

    const-string v0, "*/blurartist/#/news/#"

    const v1, 0xdeb7

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    const-string v0, "media"

    const-string v0, "*/blurrecommendation"

    const v1, 0xdeb3

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    const-string v0, "media"

    const-string v0, "*/blurrecommendation/#"

    const v1, 0xdeb8

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    const-string v0, "media"

    const-string v0, "*/bluraudio/needsync"

    const v1, 0xdeb9

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    const-string v0, "media"

    const-string v0, "*/bluralbum"

    const v1, 0xdeba

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    const-string v0, "media"

    const-string v0, "*/bluralbum/#"

    const v1, 0xdebb

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    const-string v0, "media"

    const-string v0, "*/mergedalbum"

    const v1, 0xdebe

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    const-string v0, "media"

    const-string v0, "*/mergedalbum/#"

    const v1, 0xdebf

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    const-string v0, "media"

    const-string v0, "*/mergedartist"

    const v1, 0xdebc

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    const-string v0, "media"

    const-string v0, "*/mergedartist/#"

    const v1, 0xdebd

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    const-string v0, "media"

    const-string v0, "*/blurgenres/artist/#"

    const v1, 0xdec0

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    const-string v0, "media"

    const-string v0, "*/blurgenres/album/#"

    const v1, 0xdec1

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    const-string v0, "media"

    const-string v0, "*/mergedbluraudio"

    const v1, 0xdec2

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    const-string v0, "media"

    const-string v0, "*/mergedbluraudio/#"

    const v1, 0xdec3

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    const-string v0, "media"

    const-string v0, "*/dashboardrecommendation"

    const v1, 0xdec4

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    const-string v0, "media"

    const-string v0, "*/dashboardrecommendation/#"

    const v1, 0xdec5

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 5
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/16 v3, 0x53

    const-string v4, "CREATE TRIGGER IF NOT EXISTS blur_event_cleanup1 DELETE ON artists  BEGIN DELETE FROM blur_event WHERE artist_id = old.artist_id;END"

    .line 72
    if-eqz p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-ge p2, v3, :cond_2

    .line 77
    const-string v0, "BlurMusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating database from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_artist(artist_id INTEGER PRIMARY KEY, _data TEXT, editorial BLOB, date_editorial_added DATE, amgid text);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v0, "CREATE TRIGGER IF NOT EXISTS blur_artist_cleanup1 DELETE ON artists BEGIN DELETE FROM blur_artist WHERE artist_id = old.artist_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v0, "CREATE TRIGGER IF NOT EXISTS blur_artistart_cleanup2 DELETE ON blur_artist BEGIN SELECT _DELETE_FILE(old._data); END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/android/providers/media/BlurMusicStore;->recreateBlurArtistView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_album (album_id INTEGER PRIMARY KEY, amgid TEXT, _data TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TRIGGER IF NOT EXISTS blur_album_cleanup1 DELETE ON albums BEGIN DELETE FROM blur_album WHERE album_id = old.album_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lcom/android/providers/media/BlurMusicStore;->recreateBlurAlbumView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_audio_meta (audio_id INTEGER PRIMARY KEY,rating FLOAT, play_count INTEGER, last_play_time DATE, lyrics TEXT, date_lyrics_added DATE, amgid TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "CREATE TRIGGER IF NOT EXISTS blur_audio_meta_cleanup1 DELETE ON audio_meta  BEGIN DELETE FROM blur_audio_meta WHERE audio_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_event (_id INTEGER PRIMARY KEY,artist_id INTEGER,gpb BLOB, date_added DATE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "CREATE TRIGGER IF NOT EXISTS blur_event_cleanup1 DELETE ON artists  BEGIN DELETE FROM blur_event WHERE artist_id = old.artist_id;END"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_news (_id INTEGER PRIMARY KEY,artist_id INTEGER, gpb BLOB, date_added DATE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_playhistory (_id INTEGER PRIMARY KEY AUTOINCREMENT, artist_id INTEGER,album_id INTEGER,track_id INTEGER,artist TEXT,album TEXT,track TEXT,duration INTEGER,date_played DATE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v0, "CREATE TABLE IF NOT EXISTS blur_recommendation (_id INTEGER PRIMARY KEY, gpb BLOB ,date_added DATE, type INTEGER, parent_id INTEGER );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    :cond_2
    if-ge p2, v3, :cond_3

    .line 185
    invoke-static {p0}, Lcom/android/providers/media/BlurMusicStore;->recreateBlurAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    :cond_3
    const/16 v0, 0x5b

    if-ge p2, v0, :cond_0

    .line 192
    const/16 v0, 0x4e

    if-lt p2, v0, :cond_0

    .line 193
    const-string v0, "CREATE TRIGGER IF NOT EXISTS blur_event_cleanup1 DELETE ON artists  BEGIN DELETE FROM blur_event WHERE artist_id = old.artist_id;END"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
