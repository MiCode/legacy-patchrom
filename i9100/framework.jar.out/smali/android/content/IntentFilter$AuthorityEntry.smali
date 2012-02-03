.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOrigHost:Ljava/lang/String;

.field private final mPort:I

.field private final mWild:Z


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    .line 645
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    .line 636
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    .line 637
    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    .line 638
    return-void

    :cond_0
    move v0, v2

    .line 635
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 636
    goto :goto_1

    .line 637
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 627
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/IntentFilter$AuthorityEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 627
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method static synthetic access$200(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 627
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    return v0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method public match(Landroid/net/Uri;)I
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, -0x2

    .line 673
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, host:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, v3

    .line 694
    :goto_0
    return v1

    .line 679
    :cond_0
    iget-boolean v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v1, v3

    .line 681
    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_2
    iget-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 686
    goto :goto_0

    .line 688
    :cond_3
    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-ltz v1, :cond_5

    .line 689
    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    if-eq v1, v2, :cond_4

    move v1, v3

    .line 690
    goto :goto_0

    .line 692
    :cond_4
    const/high16 v1, 0x40

    goto :goto_0

    .line 694
    :cond_5
    const/high16 v1, 0x30

    goto :goto_0
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    .line 648
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
