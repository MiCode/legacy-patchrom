.class public Landroid/net/Downloads$DownloadBase;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDownloadByUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "cookieData"
    .parameter "showDownload"
    .parameter "downloadDestination"
    .parameter "allowRoaming"
    .parameter "skipIntegrityCheck"
    .parameter "title"
    .parameter "notification_package"
    .parameter "notification_class"
    .parameter "notification_extras"

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 494
    .local p0, cr:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "cookiedata"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo p2, "visibility"

    .end local p2
    if-eqz p3, :cond_3

    const/4 p3, 0x0

    .end local p3
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    if-eqz p7, :cond_0

    .line 501
    const-string/jumbo p2, "title"

    invoke-virtual {v0, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_0
    const-string p2, "entity"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 p1, 0x0

    .line 509
    .local p1, destination:I
    packed-switch p4, :pswitch_data_0

    .line 526
    :goto_1
    const-string p2, "destination"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1           #destination:I
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string/jumbo p1, "no_integrity"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    if-eqz p8, :cond_1

    if-eqz p9, :cond_1

    .line 530
    const-string/jumbo p1, "notificationpackage"

    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo p1, "notificationclass"

    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    if-eqz p10, :cond_1

    .line 536
    const-string/jumbo p1, "notificationextras"

    invoke-virtual {v0, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_1
    sget-object p1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 543
    .local p2, downloadUri:Landroid/net/Uri;
    const-wide/16 p0, -0x1

    .line 544
    .local p0, downloadId:J
    if-eqz p2, :cond_2

    .line 545
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .end local p0           #downloadId:J
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 547
    .restart local p0       #downloadId:J
    :cond_2
    return-wide p0

    .line 497
    .end local p2           #downloadUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, url:Ljava/lang/String;
    .restart local p3
    :cond_3
    const/4 p3, 0x2

    goto :goto_0

    .line 511
    .end local p3
    .local p1, destination:I
    :pswitch_0
    const/4 p1, 0x0

    .line 512
    goto :goto_1

    .line 514
    :pswitch_1
    if-eqz p5, :cond_4

    .line 515
    const/4 p1, 0x1

    goto :goto_1

    .line 517
    :cond_4
    const/4 p1, 0x3

    .line 520
    goto :goto_1

    .line 522
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_1

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
