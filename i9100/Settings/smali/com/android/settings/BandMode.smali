.class public Lcom/android/settings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/settings/BandMode$BandListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Automatic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EURO Band"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "USA Band"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JAPAN Band"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AUS Band"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUS2 Band"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    .line 54
    iput-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    new-instance v0, Lcom/android/settings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$1;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 193
    new-instance v0, Lcom/android/settings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$2;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BandMode;)Lcom/android/settings/BandMode$BandListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/BandMode;Lcom/android/settings/BandMode$BandListItem;)Lcom/android/settings/BandMode$BandListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/BandMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 135
    iget-object v6, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v6}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BandMode;->clearList()V

    .line 139
    const/4 v1, 0x0

    .line 142
    .local v1, addBandSuccess:Z
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 143
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v2, v0

    .line 144
    .local v2, bands:[I
    const/4 v6, 0x0

    aget v5, v2, v6

    .line 146
    .local v5, size:I
    if-lez v5, :cond_2

    .line 147
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 148
    new-instance v4, Lcom/android/settings/BandMode$BandListItem;

    aget v6, v2, v3

    invoke-direct {v4, v6}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 149
    .local v4, item:Lcom/android/settings/BandMode$BandListItem;
    iget-object v6, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v4           #item:Lcom/android/settings/BandMode$BandListItem;
    :cond_1
    const/4 v1, 0x1

    .line 156
    .end local v2           #bands:[I
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_2
    if-nez v1, :cond_3

    .line 158
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    const/4 v6, 0x6

    if-ge v3, v6, :cond_3

    .line 159
    new-instance v4, Lcom/android/settings/BandMode$BandListItem;

    invoke-direct {v4, v3}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 160
    .restart local v4       #item:Lcom/android/settings/BandMode$BandListItem;
    iget-object v6, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v3           #i:I
    .end local v4           #item:Lcom/android/settings/BandMode$BandListItem;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestFocus()Z

    .line 165
    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 183
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "ex"

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800af

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    invoke-virtual {v2}, Lcom/android/settings/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, status:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0800b0

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 180
    return-void

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0800b1

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadBandList()V
    .locals 4

    .prologue
    .line 117
    const v2, 0x7f0800ae

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, str:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 127
    iget-object v2, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->requestWindowFeature(I)Z

    .line 62
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->setContentView(I)V

    .line 64
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    .line 71
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 73
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/BandMode;->loadBandList()V

    .line 79
    return-void
.end method
