.class public Lcom/android/phone/BluetoothAtPhonebook;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final CALLS_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCharacterSet:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private final mNameIgnoreBlacklisted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 8
    .parameter "context"
    .parameter "handsfree"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "ME"

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "My Car"

    aput-object v3, v1, v2

    const-string v2, "BMW 50046"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "BMW 20529"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "BMW50046"

    aput-object v3, v1, v2

    const-string v2, "Volkswagen"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mNameIgnoreBlacklisted:Ljava/util/ArrayList;

    .line 105
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 113
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "SM"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    const-string v0, "ME"

    iput-object v7, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 2
    .parameter "currSize"

    .prologue
    const/16 v1, 0x64

    .line 551
    monitor-enter p0

    if-ge p1, v1, :cond_0

    move v0, v1

    .line 552
    .local v0, maxSize:I
    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 553
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0           #maxSize:I
    :cond_0
    move v0, p1

    .line 551
    goto :goto_0

    .restart local v0       #maxSize:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 566
    packed-switch p0, :pswitch_data_0

    .line 579
    const-string v0, "O"

    :goto_0
    return-object v0

    .line 568
    :pswitch_0
    const-string v0, "H"

    goto :goto_0

    .line 570
    :pswitch_1
    const-string v0, "M"

    goto :goto_0

    .line 572
    :pswitch_2
    const-string v0, "W"

    goto :goto_0

    .line 575
    :pswitch_3
    const-string v0, "F"

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 3
    .parameter "pb"
    .parameter "force"

    .prologue
    const/4 v2, 0x0

    .line 468
    monitor-enter p0

    if-nez p1, :cond_0

    move-object v1, v2

    .line 481
    :goto_0
    monitor-exit p0

    return-object v1

    .line 471
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .line 472
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_1

    .line 473
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    .line 475
    .restart local v0       #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    .line 476
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    .line 477
    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 481
    goto :goto_0

    .line 468
    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    .locals 8
    .parameter "pb"
    .parameter "pbr"

    .prologue
    const/4 v7, 0x0

    .line 486
    monitor-enter p0

    const/4 v6, 0x1

    .line 488
    .local v6, ancillaryPhonebook:Z
    :try_start_0
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    const/4 v6, 0x0

    .line 490
    const-string v3, "in_visible_group=1 AND account_type!= \'vnd.sec.contact.sim\'"

    .line 506
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 511
    :cond_0
    if-eqz v6, :cond_7

    .line 512
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 515
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    move v0, v7

    .line 536
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return v0

    .line 491
    :cond_1
    :try_start_1
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    const-string v3, "type=2"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 493
    .end local v3           #where:Ljava/lang/String;
    :cond_2
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    const-string v3, "type=1"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 495
    .end local v3           #where:Ljava/lang/String;
    :cond_3
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 496
    const-string v3, "type=3"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 498
    .end local v3           #where:Ljava/lang/String;
    :cond_4
    const-string v0, "SM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z

    if-eqz v0, :cond_5

    .line 499
    const/4 v6, 0x0

    .line 500
    const-string v3, "in_visible_group=1 AND account_type= \'vnd.sec.contact.sim\'"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .end local v3           #where:Ljava/lang/String;
    :cond_5
    move v0, v7

    .line 503
    goto :goto_1

    .line 517
    .restart local v3       #where:Ljava/lang/String;
    :cond_6
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 518
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 519
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    .line 535
    :goto_2
    const-string v0, "BtAtPhonebook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refreshed phonebook "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " results"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x1

    goto :goto_1

    .line 523
    :cond_7
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "requesting_package"

    const-string v4, "com.android.bluetooth"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 527
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 529
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    move v0, v7

    goto/16 :goto_1

    .line 531
    :cond_8
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v2, "data1"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 532
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v2, "data2"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 533
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 486
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 557
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 558
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 559
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 560
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 561
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 562
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public getLastDialledNumber()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v10, "number"

    .line 125
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v10, v2, v0

    .line 126
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 129
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move-object v0, v4

    .line 139
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 132
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    .line 133
    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 136
    const-string v0, "number"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, column:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, number:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 139
    goto :goto_0
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .locals 2
    .parameter "parser"

    .prologue
    .line 229
    const-string v0, "+CSCS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$1;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 257
    const-string v0, "+CPBS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$2;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 301
    const-string v0, "+CPBR"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$3;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 460
    return-void
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
