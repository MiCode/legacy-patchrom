.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private isEriFileLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .parameter "phone"
    .parameter "context"
    .parameter "eriFileSource"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 104
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 105
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 107
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 11
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    const v10, 0x10400fe

    const v9, 0x10400fc

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 290
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-eqz v4, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 292
    .local v1, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_0

    .line 294
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .local v2, ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    move-object v3, v2

    .line 478
    .end local v1           #eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .local v3, ret:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 302
    .end local v3           #ret:Ljava/lang/Object;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 399
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-nez v4, :cond_2

    .line 401
    const-string v4, "CDMA"

    const-string v5, "ERI File not loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-le p2, v8, :cond_1

    .line 404
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_1
    move-object v3, v2

    .line 478
    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 305
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .end local v3           #ret:Ljava/lang/Object;
    :pswitch_0
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 309
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 312
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400fd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 316
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 319
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 323
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 328
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 332
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 335
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040100

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 339
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 342
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040101

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 346
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 349
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040102

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 353
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 356
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040103

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 360
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 363
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040104

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 367
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 370
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040105

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 374
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 377
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040106

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 381
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 384
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 388
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 391
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040108

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 395
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 411
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 437
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "ERI text"

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 413
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 418
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 421
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400fd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 426
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 429
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 434
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 442
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 443
    .restart local v1       #eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 444
    .local v0, defEriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_4

    .line 449
    if-nez v0, :cond_3

    .line 450
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERI defRoamInd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in ERI file ...on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 462
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 469
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 411
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .parameter "roamingIndicator"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object v0, p0

    .line 282
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 19

    .prologue
    .line 157
    const/4 v14, 0x0

    .line 158
    .local v14, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v16, 0x0

    .line 159
    .local v16, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 162
    .local v15, r:Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: check for alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v17, Ljava/io/FileInputStream;

    const v3, 0x1040436

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .end local v16           #stream:Ljava/io/FileInputStream;
    .local v17, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 166
    const/4 v3, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: opened alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v16, v17

    .line 176
    .end local v17           #stream:Ljava/io/FileInputStream;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    :goto_0
    if-nez v14, :cond_0

    .line 177
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: open normal file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const v3, 0x10b0002

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 182
    :cond_0
    :try_start_2
    const-string v3, "EriFile"

    invoke-static {v14, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "VersionNumber"

    invoke-interface {v14, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "NumberOfEriEntries"

    invoke-interface {v14, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "EriFileType"

    invoke-interface {v14, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 190
    const/4 v13, 0x0

    .line 192
    .local v13, parsedEriEntries:I
    :cond_1
    :goto_1
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 193
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, name:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v13, v3, :cond_2

    .line 196
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v5, v0

    iget v5, v5, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defined, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: eri parsing successful, file loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    instance-of v3, v14, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_3

    .line 230
    check-cast v14, Landroid/content/res/XmlResourceParser;

    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 233
    :cond_3
    if-eqz v16, :cond_4

    .line 234
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 240
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #parsedEriEntries:I
    :cond_4
    :goto_2
    return-void

    .line 168
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 169
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_3
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: no alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v14, 0x0

    .line 174
    goto/16 :goto_0

    .line 171
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v10, v3

    .line 172
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: no parser for alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 199
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #parsedEriEntries:I
    :cond_5
    :try_start_4
    const-string v3, "CallPromptId"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 200
    const/4 v3, 0x0

    const-string v4, "Id"

    invoke-interface {v14, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 201
    .local v11, id:I
    const/4 v3, 0x0

    const-string v4, "CallPromptText"

    invoke-interface {v14, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 202
    .local v18, text:Ljava/lang/String;
    if-ltz v11, :cond_7

    const/4 v3, 0x2

    if-gt v11, v3, :cond_7

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v18, v3, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 226
    .end local v11           #id:I
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #parsedEriEntries:I
    .end local v18           #text:Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v10, v3

    .line 227
    .local v10, e:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "CDMA"

    const-string v4, "Got exception while loading ERI file."

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    instance-of v3, v14, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_6

    .line 230
    check-cast v14, Landroid/content/res/XmlResourceParser;

    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 233
    :cond_6
    if-eqz v16, :cond_4

    .line 234
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 236
    :catch_3
    move-exception v3

    goto :goto_2

    .line 205
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #id:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #parsedEriEntries:I
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #text:Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallPromptId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 229
    .end local v11           #id:I
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #parsedEriEntries:I
    .end local v18           #text:Ljava/lang/String;
    :catchall_0
    move-exception v3

    instance-of v4, v14, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_8

    .line 230
    check-cast v14, Landroid/content/res/XmlResourceParser;

    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 233
    :cond_8
    if-eqz v16, :cond_9

    .line 234
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 238
    :cond_9
    :goto_5
    throw v3

    .line 208
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #parsedEriEntries:I
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    :try_start_9
    const-string v3, "EriInfo"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const/4 v3, 0x0

    const-string v4, "RoamingIndicator"

    invoke-interface {v14, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, roamingIndicator:I
    const/4 v3, 0x0

    const-string v5, "IconIndex"

    invoke-interface {v14, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 212
    .local v5, iconIndex:I
    const/4 v3, 0x0

    const-string v6, "IconMode"

    invoke-interface {v14, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 213
    .local v6, iconMode:I
    const/4 v3, 0x0

    const-string v7, "EriText"

    invoke-interface {v14, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, eriText:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v8, "CallPromptId"

    invoke-interface {v14, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 216
    .local v8, callPromptId:I
    const/4 v3, 0x0

    const-string v9, "AlertId"

    invoke-interface {v14, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 217
    .local v9, alertId:I
    add-int/lit8 v13, v13, 0x1

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v10, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v3, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 236
    .end local v4           #roamingIndicator:I
    .end local v5           #iconIndex:I
    .end local v6           #iconMode:I
    .end local v7           #eriText:Ljava/lang/String;
    .end local v8           #callPromptId:I
    .end local v9           #alertId:I
    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v3

    goto/16 :goto_2

    .end local v12           #name:Ljava/lang/String;
    .end local v13           #parsedEriEntries:I
    :catch_5
    move-exception v4

    goto :goto_5

    .line 171
    .end local v16           #stream:Ljava/io/FileInputStream;
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v10, v3

    move-object/from16 v16, v17

    .end local v17           #stream:Ljava/io/FileInputStream;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 168
    .end local v16           #stream:Ljava/io/FileInputStream;
    .restart local v17       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v10, v3

    move-object/from16 v16, v17

    .end local v17           #stream:Ljava/io/FileInputStream;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 112
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 490
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 130
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
