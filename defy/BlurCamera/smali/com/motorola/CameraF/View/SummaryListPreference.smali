.class public Lcom/motorola/CameraF/View/SummaryListPreference;
.super Landroid/preference/ListPreference;
.source "SummaryListPreference.java"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mSummaryText:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/View/SummaryListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/motorola/CameraF/View/SummaryListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/CameraF/View/SummaryListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/motorola/CameraF/View/SummaryListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/SummaryListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :cond_0
    return v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 13
    .parameter "builder"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "text"

    .line 68
    invoke-direct {p0}, Lcom/motorola/CameraF/View/SummaryListPreference;->getValueIndex()I

    move-result v1

    iput v1, p0, Lcom/motorola/CameraF/View/SummaryListPreference;->mClickedDialogEntryIndex:I

    .line 69
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/SummaryListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 71
    .local v8, mEntries:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, v8

    if-ge v7, v1, :cond_0

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v6, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v1, v8, v7

    invoke-virtual {v6, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 78
    .end local v6           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/SummaryListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03001b

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "text"

    aput-object v12, v4, v11

    new-array v5, v10, [I

    const v10, 0x7f0e0018

    aput v10, v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 87
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v9, Lcom/motorola/CameraF/View/SummaryListPreference$1;

    invoke-direct {v9, p0, v8}, Lcom/motorola/CameraF/View/SummaryListPreference$1;-><init>(Lcom/motorola/CameraF/View/SummaryListPreference;[Ljava/lang/CharSequence;)V

    .line 102
    .local v9, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    invoke-virtual {v0, v9}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 104
    iget v1, p0, Lcom/motorola/CameraF/View/SummaryListPreference;->mClickedDialogEntryIndex:I

    new-instance v3, Lcom/motorola/CameraF/View/SummaryListPreference$2;

    invoke-direct {v3, p0}, Lcom/motorola/CameraF/View/SummaryListPreference$2;-><init>(Lcom/motorola/CameraF/View/SummaryListPreference;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 112
    return-void
.end method

.method public setSummaryText([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "summaryText"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/motorola/CameraF/View/SummaryListPreference;->mSummaryText:[Ljava/lang/CharSequence;

    .line 55
    return-void
.end method
