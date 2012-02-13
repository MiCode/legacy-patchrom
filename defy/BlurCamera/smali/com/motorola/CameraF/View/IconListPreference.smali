.class public Lcom/motorola/CameraF/View/IconListPreference;
.super Landroid/preference/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mIcons:[I

.field private mSummaryText:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/View/IconListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/motorola/CameraF/View/IconListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/CameraF/View/IconListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :cond_0
    return v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 14
    .parameter "builder"

    .prologue
    const/4 v11, 0x2

    const-string v13, "text"

    const-string v12, "summary"

    .line 73
    iget-object v1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mIcons:[I

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "IconListPreference requires an icon array."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/View/IconListPreference;->getValueIndex()I

    move-result v1

    iput v1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mClickedDialogEntryIndex:I

    .line 79
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 81
    .local v8, mEntries:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, v8

    if-ge v7, v1, :cond_1

    .line 83
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v6, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v1, v8, v7

    invoke-virtual {v6, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "summary"

    iget-object v1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mSummaryText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v7

    invoke-virtual {v6, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 92
    .end local v6           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/IconListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "text"

    aput-object v13, v4, v5

    const/4 v5, 0x1

    const-string v10, "summary"

    aput-object v12, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 107
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v9, Lcom/motorola/CameraF/View/IconListPreference$1;

    invoke-direct {v9, p0, v8}, Lcom/motorola/CameraF/View/IconListPreference$1;-><init>(Lcom/motorola/CameraF/View/IconListPreference;[Ljava/lang/CharSequence;)V

    .line 122
    .local v9, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    invoke-virtual {v0, v9}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 124
    iget v1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mClickedDialogEntryIndex:I

    new-instance v3, Lcom/motorola/CameraF/View/IconListPreference$2;

    invoke-direct {v3, p0}, Lcom/motorola/CameraF/View/IconListPreference$2;-><init>(Lcom/motorola/CameraF/View/IconListPreference;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 132
    return-void

    .line 92
    :array_0
    .array-data 0x4
        0x18t 0x0t 0xet 0x7ft
        0x19t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method public setEntryIcons([I)V
    .locals 0
    .parameter "iconsResId"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mIcons:[I

    .line 56
    return-void
.end method

.method public setSummaryText([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "summaryText"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/CameraF/View/IconListPreference;->mSummaryText:[Ljava/lang/CharSequence;

    .line 60
    return-void
.end method
