.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private final MEDIA_KIND_AUDIO:I

.field private final MEDIA_KIND_IMAGE:I

.field private final MEDIA_KIND_VIDEO:I

.field private final MEDIA_SCANNER_PROGRESS_UPDATE_TICK:J

.field private isDrmConverted:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mExif_Ori:I

.field private mExif_Time:J

.field private mExif_lat:F

.field private mExif_lng:F

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPrevStatusTick:J

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 2
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 773
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_SCANNER_PROGRESS_UPDATE_TICK:J

    .line 774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    .line 780
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_AUDIO:I

    .line 781
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_IMAGE:I

    .line 782
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_VIDEO:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 2060
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 2061
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2062
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZ)Landroid/net/Uri;
    .locals 43
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .parameter "usePendingBulkInsert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1773
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v24

    .line 1774
    .local v24, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v26

    .line 1775
    .local v26, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v25

    .line 1776
    .local v25, isImage:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoCallImagesFileType(I)Z

    move-result v27

    .line 1777
    .local v27, isVideoCallImages:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isAppPackageFileType(I)Z

    move-result v23

    .line 1778
    .local v23, isAppPackage:Z
    if-eqz v26, :cond_15

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .line 1799
    .local v37, tableUri:Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1803
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1806
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v42

    .line 1810
    .local v42, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1811
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 1812
    const-string/jumbo v5, "mini_thumb_magic"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1818
    :cond_2
    const-string/jumbo v5, "title"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1819
    .local v40, title:Ljava/lang/String;
    if-eqz v40, :cond_3

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1820
    :cond_3
    const-string v5, "_data"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1822
    const/16 v5, 0x2f

    move-object/from16 v0, v40

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    .line 1823
    .local v29, lastSlash:I
    if-ltz v29, :cond_4

    .line 1824
    add-int/lit8 v29, v29, 0x1

    .line 1825
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v29

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 1826
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v40

    .line 1830
    :cond_4
    const/16 v5, 0x2e

    move-object/from16 v0, v40

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v28

    .line 1831
    .local v28, lastDot:I
    if-lez v28, :cond_5

    .line 1832
    const/4 v5, 0x0

    move-object/from16 v0, v40

    move v1, v5

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .line 1834
    :cond_5
    const-string/jumbo v5, "title"

    move-object/from16 v0, v42

    move-object v1, v5

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    .end local v28           #lastDot:I
    .end local v29           #lastSlash:I
    :cond_6
    const-string v5, "album"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1837
    .local v13, album:Ljava/lang/String;
    const-string v5, "<unknown>"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1838
    const-string v5, "_data"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1840
    const/16 v5, 0x2f

    invoke-virtual {v13, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    .line 1841
    .restart local v29       #lastSlash:I
    if-ltz v29, :cond_8

    .line 1842
    const/16 v32, 0x0

    .line 1844
    .local v32, previousSlash:I
    :goto_1
    const/16 v5, 0x2f

    add-int/lit8 v6, v32, 0x1

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    .line 1845
    .local v22, idx:I
    if-ltz v22, :cond_7

    move/from16 v0, v22

    move/from16 v1, v29

    if-lt v0, v1, :cond_1a

    .line 1850
    :cond_7
    if-eqz v32, :cond_8

    .line 1851
    add-int/lit8 v5, v32, 0x1

    move-object v0, v13

    move v1, v5

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1852
    const-string v5, "album"

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    .end local v22           #idx:I
    .end local v29           #lastSlash:I
    .end local v32           #previousSlash:I
    :cond_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v34, v0

    .line 1857
    .local v34, rowId:J
    if-eqz v24, :cond_1b

    const-wide/16 v7, 0x0

    cmp-long v5, v34, v7

    if-nez v5, :cond_1b

    .line 1862
    const-string v5, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1863
    const-string v5, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1864
    const-string v5, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1865
    const-string v5, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1866
    const-string v5, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1869
    const/16 v36, 0x0

    .line 1870
    .local v36, sound:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x11

    if-lt v5, v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x13

    if-le v5, v6, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    .line 1873
    :cond_a
    const/16 v36, 0x1

    .line 1875
    :cond_b
    const-string v5, "is_sound"

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1939
    .end local v36           #sound:Z
    :cond_c
    :goto_2
    const/16 v33, 0x0

    .line 1940
    .local v33, result:Landroid/net/Uri;
    const-wide/16 v7, 0x0

    cmp-long v5, v34, v7

    if-nez v5, :cond_24

    .line 1953
    if-eqz p7, :cond_23

    if-nez v24, :cond_d

    if-nez v25, :cond_d

    if-eqz v26, :cond_23

    .line 1954
    :cond_d
    if-eqz v24, :cond_21

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V

    .line 1973
    :cond_e
    :goto_4
    if-nez p7, :cond_12

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_12

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1978
    .local v21, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/net/Uri;

    .line 1979
    .local v41, uri:Landroid/net/Uri;
    if-nez v41, :cond_11

    .line 1980
    const/16 v17, 0x0

    .line 1983
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Landroid/media/MediaScanner;->access$800()[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "name=?"

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v21, v11, v5

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1987
    if-eqz v17, :cond_f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_25

    .line 1989
    :cond_f
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V

    .line 1990
    const-string/jumbo v5, "name"

    move-object/from16 v0, v42

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v41

    .line 1997
    :goto_5
    if-eqz v41, :cond_10

    .line 1998
    const-string/jumbo v5, "members"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2003
    :cond_10
    if-eqz v17, :cond_11

    .line 2004
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2009
    .end local v17           #cursor:Landroid/database/Cursor;
    :cond_11
    if-eqz v41, :cond_12

    .line 2011
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V

    .line 2012
    const-string v5, "audio_id"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2023
    .end local v21           #genre:Ljava/lang/String;
    .end local v41           #uri:Landroid/net/Uri;
    :cond_12
    if-eqz p3, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2027
    :cond_13
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaScanner is going to setup default notification  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v7, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  LastModified : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   LastModifiedPrevious : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedPrevious:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string/jumbo v5, "notification_sound"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v37

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2602(Landroid/media/MediaScanner;Z)Z

    :cond_14
    :goto_6
    move-object/from16 v5, v33

    .line 2056
    .end local v13           #album:Ljava/lang/String;
    .end local v33           #result:Landroid/net/Uri;
    .end local v34           #rowId:J
    .end local v37           #tableUri:Landroid/net/Uri;
    .end local v40           #title:Ljava/lang/String;
    .end local v42           #values:Landroid/content/ContentValues;
    :goto_7
    return-object v5

    .line 1780
    :cond_15
    if-eqz v25, :cond_16

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .restart local v37       #tableUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 1782
    .end local v37           #tableUri:Landroid/net/Uri;
    :cond_16
    if-eqz v24, :cond_17

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .restart local v37       #tableUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 1787
    .end local v37           #tableUri:Landroid/net/Uri;
    :cond_17
    if-eqz v27, :cond_18

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .restart local v37       #tableUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 1792
    .end local v37           #tableUri:Landroid/net/Uri;
    :cond_18
    if-eqz v23, :cond_19

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v37

    .restart local v37       #tableUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 1797
    .end local v37           #tableUri:Landroid/net/Uri;
    :cond_19
    const/4 v5, 0x0

    goto :goto_7

    .line 1848
    .restart local v13       #album:Ljava/lang/String;
    .restart local v22       #idx:I
    .restart local v29       #lastSlash:I
    .restart local v32       #previousSlash:I
    .restart local v37       #tableUri:Landroid/net/Uri;
    .restart local v40       #title:Ljava/lang/String;
    .restart local v42       #values:Landroid/content/ContentValues;
    :cond_1a
    move/from16 v32, v22

    .line 1849
    goto/16 :goto_1

    .line 1878
    .end local v22           #idx:I
    .end local v29           #lastSlash:I
    .end local v32           #previousSlash:I
    .restart local v34       #rowId:J
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_c

    .line 1879
    const/16 v19, 0x0

    .line 1881
    .local v19, exif:Landroid/media/ExifInterface;
    :try_start_1
    new-instance v20, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v19           #exif:Landroid/media/ExifInterface;
    .local v20, exif:Landroid/media/ExifInterface;
    move-object/from16 v19, v20

    .line 1885
    .end local v20           #exif:Landroid/media/ExifInterface;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :goto_8
    if-eqz v19, :cond_c

    .line 1886
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 1887
    .local v30, latlng:[F
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1888
    const-string v5, "latitude"

    const/4 v6, 0x0

    aget v6, v30, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1889
    const-string v5, "longitude"

    const/4 v6, 0x1

    aget v6, v30, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1892
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v38

    .line 1893
    .local v38, time:J
    const-wide/16 v7, -0x1

    cmp-long v5, v38, v7

    if-eqz v5, :cond_1d

    .line 1894
    const-string v5, "datetaken"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1898
    :cond_1d
    const-wide/16 v7, 0x0

    cmp-long v5, v34, v7

    if-eqz v5, :cond_1f

    .line 1899
    const/4 v14, 0x0

    .line 1901
    .local v14, c:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1902
    .local v6, uriWithId:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "datetaken"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1903
    if-eqz v14, :cond_1e

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1904
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1905
    .local v15, cameraTakenTime:J
    const-wide/16 v7, 0x0

    cmp-long v5, v15, v7

    if-eqz v5, :cond_1e

    .line 1906
    const-string v5, "datetaken"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #uriWithId:Landroid/net/Uri;
    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1911
    .end local v15           #cameraTakenTime:J
    :cond_1e
    if-eqz v14, :cond_1f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1915
    .end local v14           #c:Landroid/database/Cursor;
    :cond_1f
    const-string v5, "Orientation"

    const/4 v6, -0x1

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v31

    .line 1917
    .local v31, orientation:I
    const/4 v5, -0x1

    move/from16 v0, v31

    move v1, v5

    if-eq v0, v1, :cond_c

    .line 1920
    packed-switch v31, :pswitch_data_0

    .line 1931
    :pswitch_0
    const/16 v18, 0x0

    .line 1934
    .local v18, degree:I
    :goto_9
    const-string/jumbo v5, "orientation"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1911
    .end local v18           #degree:I
    .end local v31           #orientation:I
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_20

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_20
    throw v5

    .line 1922
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v31       #orientation:I
    :pswitch_1
    const/16 v18, 0x5a

    .line 1923
    .restart local v18       #degree:I
    goto :goto_9

    .line 1925
    .end local v18           #degree:I
    :pswitch_2
    const/16 v18, 0xb4

    .line 1926
    .restart local v18       #degree:I
    goto :goto_9

    .line 1928
    .end local v18           #degree:I
    :pswitch_3
    const/16 v18, 0x10e

    .line 1929
    .restart local v18       #degree:I
    goto :goto_9

    .line 1954
    .end local v18           #degree:I
    .end local v19           #exif:Landroid/media/ExifInterface;
    .end local v30           #latlng:[F
    .end local v31           #orientation:I
    .end local v38           #time:J
    .restart local v33       #result:Landroid/net/Uri;
    :cond_21
    if-eqz v25, :cond_22

    const/4 v5, 0x2

    goto/16 :goto_3

    :cond_22
    const/4 v5, 0x3

    goto/16 :goto_3

    .line 1957
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v33

    .line 1958
    if-eqz v33, :cond_e

    .line 1959
    invoke-static/range {v33 .. v33}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    .line 1960
    move-wide/from16 v0, v34

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    goto/16 :goto_4

    .line 1967
    :cond_24
    move-object/from16 v0, v37

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v33

    move-object/from16 v2, v42

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1994
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v21       #genre:Ljava/lang/String;
    .restart local v41       #uri:Landroid/net/Uri;
    :cond_25
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v41

    goto/16 :goto_5

    .line 2003
    :catchall_1
    move-exception v5

    if-eqz v17, :cond_26

    .line 2004
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_26
    throw v5

    .line 2032
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v21           #genre:Ljava/lang/String;
    .end local v41           #uri:Landroid/net/Uri;
    :cond_27
    if-eqz p2, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2036
    :cond_28
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaScanner is going to setup default ringtone  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v7, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  LastModified : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   LastModifiedPrevious : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedPrevious:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "DEBUG_RINGTONE_MEDIASCANNER_LASTMODIFIED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prev :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedPrevious:J

    move-wide v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Current:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2042
    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v37

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2802(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 2045
    :cond_29
    if-eqz p4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2049
    :cond_2a
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaScanner is going to setup default alarm  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v7, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  LastModified : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   LastModifiedPrevious : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedPrevious:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const-string v5, "alarm_alert"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v37

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$3002(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 1882
    .end local v33           #result:Landroid/net/Uri;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v5

    goto/16 :goto_8

    .line 1920
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDrmFileType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 914
    const-string v9, ".dcf"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 915
    .local v5, isDCF:Z
    const-string v9, ".dm"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 916
    .local v6, isDM:Z
    const-string v9, ".odf"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 917
    .local v7, isODF:Z
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v8

    .line 918
    .local v8, manager:Landroid/drm/mobile2/OMADRMManager;
    if-nez v8, :cond_0

    .line 919
    const-string v9, "MediaScanner"

    const-string v10, "OmaDRMManager is NULL : "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v9, -0x1

    .line 1018
    :goto_0
    return v9

    .line 923
    :cond_0
    if-eqz v6, :cond_1

    .line 924
    :try_start_0
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scanning for the DM File : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, destfile:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 929
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rights installed for file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .local v2, file2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 932
    move-object p1, v0

    .line 933
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 934
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 941
    .end local v0           #destfile:Ljava/lang/String;
    .end local v2           #file2:Ljava/io/File;
    :cond_1
    :goto_1
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scanning for the DCF/ODF/O4A/O4V File : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 945
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " addDRmFile is success : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_2
    if-nez p2, :cond_2

    .line 951
    const-string v9, "MediaScanner"

    const-string v10, "MimeType is null so get it from DRM Engine : "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 954
    :cond_2
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 955
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDRMFileTypes: mimetype : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDRMFileTypes: mMimeType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    if-nez p2, :cond_5

    .line 958
    const-string v9, "MediaScanner"

    const-string v10, "MediaScanner: getFileTypes: null MimeType "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 936
    .restart local v0       #destfile:Ljava/lang/String;
    :cond_3
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conversion failed for the file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1013
    .end local v0           #destfile:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1014
    .local v1, drme:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    .line 1018
    .end local v1           #drme:Landroid/drm/mobile2/OMADRMException;
    :goto_3
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 947
    :cond_4
    :try_start_1
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addDRmFile is failure : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1015
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 1016
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 961
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_5
    :try_start_2
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 962
    .local v3, fileType:I
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileType= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    if-eqz v3, :cond_6

    .line 965
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFileTypes: FileType is proper "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v3

    .line 966
    goto/16 :goto_0

    .line 968
    :cond_6
    const-string v9, "audio/mp3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "audio/mpeg3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "audio/x-mp3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "audio/x-mpeg"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "audio/x-mpeg3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 969
    :cond_7
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaScanner: getFileTypes: mimetype is MP3 but not supported by MediaFile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 972
    :cond_8
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaScanner: getFileTypes: unknown MimeType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 973
    const/4 v9, -0x1

    goto/16 :goto_0
.end method

.method private isMetadataSupported(I)Z
    .locals 4
    .parameter "fileType"

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x1

    const-string v1, "GT-I9100"

    .line 1464
    const-string v0, "GT-I9100"

    const-string v0, "SHW-M"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9100"

    const-string v0, "SHV-E"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isKORMediaFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1523
    :goto_0
    return v0

    .line 1478
    :cond_1
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v2

    .line 1509
    goto/16 :goto_0

    .line 1513
    :cond_3
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    :cond_4
    move v0, v2

    .line 1514
    goto/16 :goto_0

    .line 1519
    :cond_5
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_6

    move v0, v2

    .line 1520
    goto/16 :goto_0

    .line 1523
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 1596
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1597
    .local v1, length:I
    if-ne p2, v1, :cond_0

    move v4, p3

    .line 1610
    :goto_0
    return v4

    .line 1599
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1601
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, p3

    goto :goto_0

    .line 1603
    .end local p2
    .restart local v3       #start:I
    :cond_2
    sub-int v2, v0, v6

    .line 1604
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 1605
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1606
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move v4, v2

    goto :goto_0

    .line 1607
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    sub-int v5, v0, v6

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, v2

    .line 1610
    goto :goto_0
.end method

.method private scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V
    .locals 27
    .parameter "tableUri"
    .parameter "values"
    .parameter "value_count"
    .parameter "set_genre"

    .prologue
    .line 1062
    :try_start_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1066
    .local v18, genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    move-object/from16 v0, p2

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v26, v0

    .line 1067
    .local v26, uris:[Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I

    move-result v22

    .line 1068
    .local v22, insertNum:I
    move/from16 v0, v22

    move/from16 v1, p3

    if-eq v0, v1, :cond_1

    .line 1070
    const-string v4, "MediaScanner"

    const-string v5, "Pending Flush Canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v22           #insertNum:I
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1075
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v22       #insertNum:I
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_1
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 1078
    aget-object v4, p2, v21

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1079
    .local v24, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1080
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 1084
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1085
    .local v14, entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v14, :cond_4

    .line 1075
    :cond_3
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 1086
    :cond_4
    aget-object v4, v26, v21

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, v14, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1089
    if-eqz p4, :cond_3

    .line 1091
    aget-object v4, p2, v21

    const-string v5, "genre_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1092
    .local v15, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1094
    .local v20, genre_uri:Landroid/net/Uri;
    if-nez v20, :cond_7

    .line 1095
    const/4 v10, 0x0

    .line 1099
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaScanner;->access$800()[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "name=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1100
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_9

    .line 1102
    :cond_5
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1103
    .local v25, temp_value:Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 1111
    .end local v25           #temp_value:Landroid/content/ContentValues;
    .local v19, genre_type_uri:Landroid/net/Uri;
    :goto_3
    if-eqz v19, :cond_6

    .line 1112
    const-string/jumbo v4, "members"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    :cond_6
    if-eqz v10, :cond_7

    .line 1118
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1122
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v19           #genre_type_uri:Landroid/net/Uri;
    :cond_7
    if-eqz v20, :cond_3

    .line 1125
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    .restart local v25       #temp_value:Landroid/content/ContentValues;
    const-string v4, "audio_id"

    iget-wide v5, v14, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1128
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1129
    .local v17, genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez v17, :cond_8

    .line 1131
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .restart local v17       #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1159
    .end local v14           #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #genre:Ljava/lang/String;
    .end local v17           #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v20           #genre_uri:Landroid/net/Uri;
    .end local v21           #i:I
    .end local v22           #insertNum:I
    .end local v24           #key:Ljava/lang/String;
    .end local v25           #temp_value:Landroid/content/ContentValues;
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 1160
    .local v11, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile_FlushPending()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1108
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v15       #genre:Ljava/lang/String;
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v20       #genre_uri:Landroid/net/Uri;
    .restart local v21       #i:I
    .restart local v22       #insertNum:I
    .restart local v24       #key:Ljava/lang/String;
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_9
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v19

    .restart local v19       #genre_type_uri:Landroid/net/Uri;
    goto :goto_3

    .line 1117
    .end local v19           #genre_type_uri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_a

    .line 1118
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1161
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #genre:Ljava/lang/String;
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v20           #genre_uri:Landroid/net/Uri;
    .end local v21           #i:I
    .end local v22           #insertNum:I
    .end local v24           #key:Ljava/lang/String;
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :catch_1
    move-exception v4

    move-object v11, v4

    .line 1162
    .local v11, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MediaScanner"

    const-string v5, "UnsupportedOperationException in MediaScanner.scanFile_FlushPending()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1141
    .end local v11           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v21       #i:I
    .restart local v22       #insertNum:I
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_b
    if-eqz p4, :cond_0

    .line 1144
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1145
    .local v12, entries:Ljava/util/Set;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1148
    .end local p1
    .local v23, iter:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1149
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1151
    .local v13, entry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 1152
    .restart local v20       #genre_uri:Landroid/net/Uri;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1153
    .restart local v17       #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    move-object/from16 v0, p1

    check-cast v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1155
    .local v16, genre_arr:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 5
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 2068
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2071
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2073
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it has setupped : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2077
    const-string/jumbo v1, "ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2078
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DEBUG_RINGTONE_MEDIASCANNER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScanner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2081
    :cond_0
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 11

    .prologue
    const/4 v7, 0x4

    const-string v10, "duration"

    const-string v9, "artist"

    const-string v8, "album"

    const-string v6, "<unknown>"

    .line 1707
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1709
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v3, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1712
    const-string v3, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1713
    const-string/jumbo v3, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1716
    const-string v3, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v3, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v3, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    const-string v1, "0x0"

    .line 1721
    .local v1, sUnknownResolution:Ljava/lang/String;
    const-string/jumbo v3, "resolution"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_0
    :goto_3
    return-object v0

    .line 1716
    :cond_1
    const-string v3, "<unknown>"

    move-object v3, v6

    goto :goto_0

    .line 1717
    :cond_2
    const-string v3, "<unknown>"

    move-object v3, v6

    goto :goto_1

    .restart local v1       #sUnknownResolution:Ljava/lang/String;
    :cond_3
    move-object v4, v1

    .line 1721
    goto :goto_2

    .line 1725
    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_4
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1727
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1728
    const-string v3, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v3, "album_artist"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v3, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    :goto_7
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_5

    .line 1740
    const-string/jumbo v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1743
    :cond_5
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1744
    .local v2, year_name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_6

    .line 1745
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1746
    :cond_6
    const-string/jumbo v3, "year_name"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x76c

    if-lt v4, v5, :cond_b

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    move-object v4, v2

    :goto_8
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v3, "genre_name"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string/jumbo v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1751
    const-string v3, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1752
    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 1728
    .end local v2           #year_name:Ljava/lang/String;
    :cond_7
    const-string v3, "<unknown>"

    move-object v3, v6

    goto/16 :goto_4

    .line 1730
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1732
    :cond_9
    const-string v3, "<unknown>"

    move-object v3, v6

    goto/16 :goto_6

    .line 1737
    :cond_a
    const-string v4, "<unknown>"

    move-object v4, v6

    goto/16 :goto_7

    .line 1746
    .restart local v2       #year_name:Ljava/lang/String;
    :cond_b
    const-string v4, "<unknown>"

    move-object v4, v6

    goto :goto_8

    .line 1747
    :cond_c
    const-string v4, "<unknown>"

    move-object v4, v6

    goto :goto_9
.end method


# virtual methods
.method public addNoMediaFolder(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    const-string v3, "_data LIKE ?"

    .line 2084
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2085
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2093
    .local v1, pathSpec:[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2095
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    return-void

    .line 2097
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2098
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;
    .locals 19
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 791
    const/16 v6, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 792
    .local v16, lastSlash:I
    if-ltz v16, :cond_5

    add-int/lit8 v6, v16, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 794
    add-int/lit8 v6, v16, 0x1

    const-string v7, "._"

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 795
    const/4 v6, 0x0

    .line 908
    :goto_0
    return-object v6

    .line 800
    :cond_0
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".jpg"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 801
    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArt_{"

    const/4 v9, 0x0

    const/16 v10, 0xa

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArt."

    const/4 v9, 0x0

    const/16 v10, 0x9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 803
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 805
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v16

    const/4 v7, 0x1

    sub-int v17, v6, v7

    .line 806
    .local v17, length:I
    const/16 v6, 0x11

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArtSmall"

    const/4 v9, 0x0

    const/16 v10, 0xd

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const/16 v6, 0xa

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_5

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "Folder"

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 808
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 813
    .end local v17           #length:I
    :cond_5
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 815
    if-eqz p2, :cond_6

    .line 816
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    if-eqz v6, :cond_6

    .line 818
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 821
    :cond_6
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_7

    .line 825
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v18

    .line 826
    .local v18, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v18, :cond_7

    .line 827
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 828
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 834
    .end local v18           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".odf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".o4a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".o4v"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 837
    :cond_8
    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is a DRM File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct/range {p0 .. p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getDrmFileType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 839
    .local v14, filetype:I
    if-lez v14, :cond_f

    .line 840
    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileType found for the DRM File filetype:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n mimetype"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 847
    .end local v14           #filetype:I
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    move v6, v0

    if-eqz v6, :cond_a

    .line 848
    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "It is a converted file.So change the path to DCF : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_a

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 855
    :cond_a
    move-object/from16 v15, p1

    .line 856
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 857
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 859
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 860
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v5, :cond_c

    .line 861
    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    .line 862
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_c
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 867
    iget-wide v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v12, p3, v6

    .line 868
    .local v12, delta:J
    const-wide/16 v6, 0x1

    cmp-long v6, v12, v6

    if-gtz v6, :cond_d

    const-wide/16 v6, -0x1

    cmp-long v6, v12, v6

    if-gez v6, :cond_e

    .line 871
    :cond_d
    iget-wide v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    iput-wide v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedPrevious:J

    .line 873
    move-wide/from16 v0, p3

    move-object v2, v5

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 874
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 877
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 844
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v12           #delta:J
    .end local v15           #key:Ljava/lang/String;
    .restart local v14       #filetype:I
    :cond_f
    const-string v6, "MediaScanner"

    const-string v7, "No fileType found for the DRM File"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 884
    .end local v14           #filetype:I
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v12       #delta:J
    .restart local v15       #key:Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 885
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 886
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 887
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 888
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 889
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 890
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 891
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 892
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 893
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 894
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 895
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 896
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 898
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .line 902
    const-wide/16 v6, -0x1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Time:J

    .line 903
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    .line 904
    const v6, 0x4479c000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    .line 905
    const v6, 0x4479c000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    move-object v6, v5

    .line 908
    goto/16 :goto_0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    .locals 9
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 1532
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;
    .locals 11
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"
    .parameter "usePendingBulkInsert"

    .prologue
    .line 1545
    const/4 v10, 0x0

    .line 1548
    .local v10, result:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 1549
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v0, :cond_5

    .line 1550
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1551
    const-string v0, "MediaScanner"

    const-string v2, "changing the path to dcf for meta Data Scanning"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1553
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1554
    const/16 p8, 0x0

    .line 1561
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_1

    if-eqz p7, :cond_4

    .line 1562
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1563
    .local v9, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    move v2, v0

    .line 1564
    .local v2, ringtones:Z
    :goto_1
    const-string v0, "/notifications/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    move v3, v0

    .line 1565
    .local v3, notifications:Z
    :goto_2
    const-string v0, "/alarms/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    move v4, v0

    .line 1566
    .local v4, alarms:Z
    :goto_3
    const-string v0, "/podcasts/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    move v6, v0

    .line 1567
    .local v6, podcasts:Z
    :goto_4
    const-string v0, "/music/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    if-nez v2, :cond_b

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    if-nez v6, :cond_b

    :cond_2
    const/4 v0, 0x1

    move v5, v0

    .line 1570
    .local v5, music:Z
    :goto_5
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-direct {p0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isMetadataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1571
    const-string v0, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doScanFile:: calling processFile for filePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :cond_3
    :goto_6
    move-object v0, p0

    move/from16 v7, p8

    .line 1583
    invoke-direct/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v10

    .line 1592
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    .end local v9           #lowpath:Ljava/lang/String;
    :cond_4
    :goto_7
    return-object v10

    .line 1558
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_5
    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".odf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    const/16 p8, 0x0

    goto/16 :goto_0

    .line 1563
    .restart local v9       #lowpath:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 1564
    .restart local v2       #ringtones:Z
    :cond_8
    const/4 v0, 0x0

    move v3, v0

    goto :goto_2

    .line 1565
    .restart local v3       #notifications:Z
    :cond_9
    const/4 v0, 0x0

    move v4, v0

    goto :goto_3

    .line 1566
    .restart local v4       #alarms:Z
    :cond_a
    const/4 v0, 0x0

    move v6, v0

    goto :goto_4

    .line 1567
    .restart local v6       #podcasts:Z
    :cond_b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_5

    .line 1575
    .restart local v5       #music:Z
    :cond_c
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    .line 1587
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    .end local v9           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1588
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "resolution"

    .line 1614
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1618
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 1686
    :cond_1
    :goto_0
    return-void

    .line 1619
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1620
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 1621
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1622
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 1623
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1624
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 1625
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1626
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 1627
    :cond_a
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1629
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 1630
    const/4 v1, -0x1

    .line 1631
    .local v1, genreCode:I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1632
    .local v0, ch:C
    const/16 v3, 0x28

    if-ne v0, v3, :cond_e

    .line 1633
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 1637
    :cond_c
    :goto_1
    if-ltz v1, :cond_f

    invoke-static {}, Landroid/media/MediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 1638
    invoke-static {}, Landroid/media/MediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, v1

    .line 1646
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_d
    :goto_2
    #calls: Landroid/media/MediaScanner;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Landroid/media/MediaScanner;->access$2200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1649
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 1634
    .restart local v0       #ch:C
    .restart local v1       #genreCode:I
    :cond_e
    const/16 v3, 0x30

    if-lt v0, v3, :cond_c

    const/16 v3, 0x39

    if-gt v0, v3, :cond_c

    .line 1635
    invoke-direct {p0, p2, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    goto :goto_1

    .line 1639
    :cond_f
    const/16 v3, 0xff

    if-ne v1, v3, :cond_d

    .line 1641
    const/4 p2, 0x0

    goto :goto_2

    .line 1650
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_10
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1651
    :cond_11
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 1652
    :cond_12
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1655
    :cond_13
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 1656
    .local v2, num:I
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 1657
    .end local v2           #num:I
    :cond_14
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1661
    :cond_15
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 1662
    .restart local v2       #num:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 1663
    .end local v2           #num:I
    :cond_16
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1664
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 1665
    :cond_17
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1666
    :cond_18
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 1668
    :cond_19
    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1669
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_0

    .line 1671
    :cond_1b
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1672
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 1675
    :cond_1c
    const-string v3, "exif_time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1676
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Time:J

    goto/16 :goto_0

    .line 1677
    :cond_1d
    const-string v3, "exif_ori"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1678
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    goto/16 :goto_0

    .line 1679
    :cond_1e
    const-string v3, "exif_gps_lat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1680
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    goto/16 :goto_0

    .line 1681
    :cond_1f
    const-string v3, "exif_gps_lng"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1682
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJ)V
    .locals 9
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1033
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v8, v7

    .line 1034
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    .line 1039
    :goto_0
    return-void

    .line 1036
    :cond_0
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    goto :goto_0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    const/4 v7, 0x0

    .line 1047
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v8, v7

    .line 1048
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    .line 1053
    :goto_0
    return-void

    .line 1050
    :cond_0
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    goto :goto_0
.end method

.method public scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    .locals 9
    .parameter "mediaKind"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v7, ")"

    const-string v4, "MediaScanner"

    .line 1326
    const/16 v0, 0x1f4

    .line 1327
    .local v0, PENDING_MAX:I
    if-ne p1, v8, :cond_3

    .line 1328
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1330
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Audio Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1332
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1336
    :cond_0
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1337
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1408(Landroid/media/MediaScanner;)I

    .line 1340
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1342
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1348
    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1400
    .end local v1           #i:I
    :cond_2
    :goto_1
    return-void

    .line 1351
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 1353
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1355
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Image Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1357
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    .line 1361
    :cond_4
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1362
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1608(Landroid/media/MediaScanner;)I

    .line 1365
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1367
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1371
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1372
    :cond_5
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    goto/16 :goto_1

    .line 1375
    .end local v1           #i:I
    :cond_6
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1377
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1379
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Video Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1381
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    .line 1385
    :cond_7
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1386
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1808(Landroid/media/MediaScanner;)I

    .line 1389
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1391
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1395
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1396
    :cond_8
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    goto/16 :goto_1
.end method

.method public scanFile_Special(Ljava/lang/String;JJ)V
    .locals 30
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 1168
    const/16 v22, 0x0

    .line 1171
    .local v22, result:Landroid/net/Uri;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v5

    .line 1172
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    move v4, v0

    if-eqz v4, :cond_0

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 1174
    const-string v4, "MediaScanner"

    const-string v6, "changing the path to dcf for meta Data Scanning"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1176
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1180
    :cond_0
    if-eqz v5, :cond_2

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v4, :cond_2

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p0

    #calls: Landroid/media/MediaScanner;->processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1186
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 1187
    .local v20, lowpath:Ljava/lang/String;
    const-string v4, "/ringtones/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    move v6, v4

    .line 1188
    .local v6, ringtones:Z
    :goto_0
    const-string v4, "/notifications/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    move v7, v4

    .line 1189
    .local v7, notifications:Z
    :goto_1
    const-string v4, "/alarms/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    move v8, v4

    .line 1190
    .local v8, alarms:Z
    :goto_2
    const-string v4, "/podcasts/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    move v10, v4

    .line 1191
    .local v10, podcasts:Z
    :goto_3
    const-string v4, "/music/"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    if-nez v8, :cond_7

    if-nez v10, :cond_7

    :cond_1
    const/4 v4, 0x1

    move v9, v4

    .line 1193
    .local v9, music:Z
    :goto_4
    move-object v0, v5

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v4, v26, v28

    if-eqz v4, :cond_8

    .line 1200
    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZ)Landroid/net/Uri;

    .line 1320
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v6           #ringtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v20           #lowpath:Ljava/lang/String;
    :cond_2
    :goto_5
    return-void

    .line 1187
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v20       #lowpath:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    move v6, v4

    goto :goto_0

    .line 1188
    .restart local v6       #ringtones:Z
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1189
    .restart local v7       #notifications:Z
    :cond_5
    const/4 v4, 0x0

    move v8, v4

    goto :goto_2

    .line 1190
    .restart local v8       #alarms:Z
    :cond_6
    const/4 v4, 0x0

    move v10, v4

    goto :goto_3

    .line 1191
    .restart local v10       #podcasts:Z
    :cond_7
    const/4 v4, 0x0

    move v9, v4

    goto :goto_4

    .line 1208
    .restart local v9       #music:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 1209
    .local v15, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 1210
    .local v17, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 1211
    .local v16, isImage:Z
    if-eqz v17, :cond_14

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 1223
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 1224
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1228
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 1231
    .local v25, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1232
    .local v24, title:Ljava/lang/String;
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1233
    :cond_b
    const-string v4, "_data"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1235
    const/16 v4, 0x2f

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1236
    .local v19, lastSlash:I
    if-ltz v19, :cond_c

    .line 1237
    add-int/lit8 v19, v19, 0x1

    .line 1238
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_c

    .line 1239
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 1243
    :cond_c
    const/16 v4, 0x2e

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 1244
    .local v18, lastDot:I
    if-lez v18, :cond_d

    .line 1245
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1247
    :cond_d
    const-string/jumbo v4, "title"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    .end local v18           #lastDot:I
    .end local v19           #lastSlash:I
    :cond_e
    const-string v4, "album"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1250
    .local v12, album:Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1251
    const-string v4, "_data"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1253
    const/16 v4, 0x2f

    invoke-virtual {v12, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1254
    .restart local v19       #lastSlash:I
    if-ltz v19, :cond_10

    .line 1255
    const/16 v21, 0x0

    .line 1257
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .local v21, previousSlash:I
    :goto_7
    const/16 v4, 0x2f

    add-int/lit8 v5, v21, 0x1

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 1258
    .local v14, idx:I
    if-ltz v14, :cond_f

    move v0, v14

    move/from16 v1, v19

    if-lt v0, v1, :cond_16

    .line 1263
    :cond_f
    if-eqz v21, :cond_10

    .line 1264
    add-int/lit8 v4, v21, 0x1

    move-object v0, v12

    move v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1265
    const-string v4, "album"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .end local v14           #idx:I
    .end local v19           #lastSlash:I
    .end local v21           #previousSlash:I
    :cond_10
    if-eqz v15, :cond_17

    .line 1272
    const-string v4, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1273
    const-string v4, "is_notification"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1274
    const-string v4, "is_alarm"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1275
    const-string v4, "is_music"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1276
    const-string v4, "is_podcast"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1279
    const/16 v23, 0x0

    .line 1280
    .local v23, sound:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x11

    if-lt v4, v5, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x13

    if-le v4, v5, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13

    .line 1283
    :cond_12
    const/16 v23, 0x1

    .line 1285
    :cond_13
    const-string v4, "is_sound"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1292
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1317
    .end local v6           #ringtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v12           #album:Ljava/lang/String;
    .end local v15           #isAudio:Z
    .end local v16           #isImage:Z
    .end local v17           #isVideo:Z
    .end local v20           #lowpath:Ljava/lang/String;
    .end local v23           #sound:Z
    .end local v24           #title:Ljava/lang/String;
    .end local v25           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 1318
    .local v13, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile_Special()"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1213
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v6       #ringtones:Z
    .restart local v7       #notifications:Z
    .restart local v8       #alarms:Z
    .restart local v9       #music:Z
    .restart local v10       #podcasts:Z
    .restart local v15       #isAudio:Z
    .restart local v16       #isImage:Z
    .restart local v17       #isVideo:Z
    .restart local v20       #lowpath:Ljava/lang/String;
    :cond_14
    if-eqz v16, :cond_15

    .line 1214
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1215
    :cond_15
    if-eqz v15, :cond_2

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1261
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v12       #album:Ljava/lang/String;
    .restart local v14       #idx:I
    .restart local v19       #lastSlash:I
    .restart local v21       #previousSlash:I
    .restart local v24       #title:Ljava/lang/String;
    .restart local v25       #values:Landroid/content/ContentValues;
    :cond_16
    move/from16 v21, v14

    .line 1262
    goto/16 :goto_7

    .line 1296
    .end local v14           #idx:I
    .end local v19           #lastSlash:I
    .end local v21           #previousSlash:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_2

    .line 1297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    move v4, v0

    move v0, v4

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f380000000000L

    cmpl-double v4, v26, v28

    if-eqz v4, :cond_18

    .line 1298
    const-string v4, "latitude"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1299
    const-string v4, "longitude"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1305
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    .line 1306
    const-string/jumbo v4, "orientation"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    :cond_19
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method public scanFile_SpecialEnd(I)V
    .locals 8
    .parameter "option"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v7, "MediaScanner"

    .line 1403
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1404
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush IMAGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    if-eq p1, v5, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1410
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1411
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    .line 1413
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1414
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    if-eq p1, v5, :cond_2

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1420
    :cond_2
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1421
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1423
    :cond_3
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1424
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    if-eq p1, v5, :cond_4

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1430
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1431
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    .line 1433
    :cond_5
    return-void
.end method

.method public setExternalSDCardRemovalFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2105
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z
    invoke-static {v0, p1}, Landroid/media/MediaScanner;->access$3202(Landroid/media/MediaScanner;Z)Z

    .line 2106
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 1689
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1696
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1697
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method

.method public setProgressStatus(III)V
    .locals 8
    .parameter "device"
    .parameter "total"
    .parameter "curr"

    .prologue
    .line 1438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1441
    .local v0, currTick:J
    if-eqz p3, :cond_0

    if-eq p3, p2, :cond_0

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 1447
    :cond_0
    const-string v4, "file://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1448
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1449
    .local v2, scanProgress:Landroid/content/Intent;
    const-string v4, "ScanType"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1450
    const-string v4, "ScanTotal"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1451
    const-string v4, "ScanDone"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1452
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1455
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    .line 1457
    .end local v2           #scanProgress:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
