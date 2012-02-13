.class public Lcom/android/phone/VoiceQualityPicker;
.super Landroid/app/AlertDialog;
.source "VoiceQualityPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VoiceQualityPicker$1;,
        Lcom/android/phone/VoiceQualityPicker$WarningListener;,
        Lcom/android/phone/VoiceQualityPicker$SamplePlayer;,
        Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;
    }
.end annotation


# static fields
.field private static final KEY_LIVE_PREVIEW:Ljava/lang/String; = "live preview"

.field private static final KEY_PLAYER:Ljava/lang/String; = "player"

.field private static final KEY_RESUMING:Ljava/lang/String; = "resuming"

.field private static final KEY_SAMPLE_PREVIEW:Ljava/lang/String; = "sample preview"

.field private static final KEY_SELECTION:Ljava/lang/String; = "selection"

.field private static final KEY_WARNING:Ljava/lang/String; = "warning"

.field private static final MEDIA_PATH:Ljava/lang/String; = "/system/media/audio/ui"

.field static final PROFILE_BALANCED:I = 0x1

.field static final PROFILE_BRIGHT:I = 0x2

.field static final PROFILE_EXTRA_BRIGHT:I = 0x3

.field static final PROFILE_STANDARD:I = 0x0

.field private static final SAMPLE_NAME_BALANCED:Ljava/lang/String; = "balanced.wav"

.field private static final SAMPLE_NAME_BRIGHT:Ljava/lang/String; = "bright.wav"

.field private static final SAMPLE_NAME_EXTRA_BRIGHT:Ljava/lang/String; = "extra_bright.wav"

.field private static final SAMPLE_NAME_STANDARD:Ljava/lang/String; = "standard.wav"

.field private static final mProfileSampleMap:Ljava/util/HashMap;


# instance fields
.field private isResuming:Z

.field private isWarningShown:Z

.field private mListView:Landroid/widget/ListView;

.field private mLivePreview:Z

.field private mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

.field private mSamplePreview:Z

.field private mSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/VoiceQualityPicker;->mProfileSampleMap:Ljava/util/HashMap;

    .line 65
    sget-object v0, Lcom/android/phone/VoiceQualityPicker;->mProfileSampleMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "standard.wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/phone/VoiceQualityPicker;->mProfileSampleMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "balanced.wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/phone/VoiceQualityPicker;->mProfileSampleMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bright.wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/phone/VoiceQualityPicker;->mProfileSampleMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extra_bright.wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v2, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    .line 74
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isResuming:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    .line 78
    iput-object v2, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VoiceQualityPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/VoiceQualityPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/VoiceQualityPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/VoiceQualityPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/VoiceQualityPicker;)Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/phone/VoiceQualityPicker;->mProfileSampleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/VoiceQualityPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/VoiceQualityPicker;->stopPlayback()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/VoiceQualityPicker;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/VoiceQualityPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    return p1
.end method

.method private getVqListAdapter()Landroid/widget/ListAdapter;
    .locals 14

    .prologue
    const/4 v11, 0x2

    const-string v13, "text2"

    const-string v12, "text1"

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, vqItems:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, vqSubStr:[Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 303
    .local v2, theList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_0

    .line 305
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v7, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "text1"

    aget-object v0, v8, v6

    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "text2"

    aget-object v0, v9, v6

    invoke-interface {v7, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    .end local v7           #item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03005e

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "text1"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v10, "text2"

    aput-object v13, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method private showWarningMessage()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/phone/VoiceQualityPicker$WarningListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VoiceQualityPicker$WarningListener;-><init>(Lcom/android/phone/VoiceQualityPicker;Lcom/android/phone/VoiceQualityPicker$1;)V

    .line 329
    .local v1, theListener:Lcom/android/phone/VoiceQualityPicker$WarningListener;
    const v2, 0x7f0b0107

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 330
    const v2, 0x7f0b0109

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 331
    const v2, 0x7f0b016e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    .line 336
    return-void
.end method

.method private stopPlayback()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    invoke-virtual {v0}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;->stop()V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    .line 197
    new-instance v0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;-><init>(Lcom/android/phone/VoiceQualityPicker;)V

    .line 199
    .local v0, vqListener:Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/phone/VoiceQualityPicker;->getVqListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 203
    const v1, 0x7f0b0107

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceQualityPicker;->setTitle(I)V

    .line 204
    const v1, 0x7f0200f0

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceQualityPicker;->setIcon(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v1, v0}, Lcom/android/phone/VoiceQualityPicker;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 207
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/phone/VoiceQualityPicker;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceQualityPicker;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 210
    invoke-virtual {p0, v5}, Lcom/android/phone/VoiceQualityPicker;->setInverseBackgroundForced(Z)V

    .line 212
    if-nez p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getApSettings(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    .line 215
    new-instance v1, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    invoke-direct {v1}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    .line 216
    iput-boolean v4, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    .line 217
    iput-boolean v4, p0, Lcom/android/phone/VoiceQualityPicker;->isResuming:Z

    .line 218
    iput-boolean v4, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    .line 219
    iput-boolean v4, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    .line 231
    :goto_0
    iget v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    if-eq v6, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceQualityPicker;->setView(Landroid/view/View;)V

    .line 237
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 238
    return-void

    .line 223
    :cond_1
    const-string v1, "selection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    .line 224
    const-string v1, "player"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    iput-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    .line 225
    const-string v1, "warning"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    .line 226
    const-string v1, "resuming"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isResuming:Z

    .line 227
    const-string v1, "live preview"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    .line 228
    const-string v1, "sample preview"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, instance:Landroid/os/Bundle;
    const-string v1, "selection"

    iget v2, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v1, "player"

    iget-object v2, p0, Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 245
    const-string v1, "warning"

    iget-boolean v2, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string v1, "resuming"

    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v1, "live preview"

    iget-boolean v2, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v1, "sample preview"

    iget-boolean v2, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 254
    if-nez p1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/android/phone/VoiceQualityPicker;->stopPlayback()V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getApSettings(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    .line 267
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    if-eq v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/phone/VoiceQualityPicker;->mSelection:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 273
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getApState()I

    move-result v0

    .line 262
    .local v0, apState:I
    if-nez v0, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    .line 263
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 262
    goto :goto_1

    :cond_3
    move v1, v2

    .line 263
    goto :goto_2
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getApState()I

    move-result v0

    .line 279
    .local v0, apState:I
    iget-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isResuming:Z

    if-nez v1, :cond_0

    .line 282
    if-nez v0, :cond_4

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z

    .line 283
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z

    .line 286
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 288
    iget-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isResuming:Z

    if-nez v1, :cond_1

    if-eq v3, v0, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z

    if-eqz v1, :cond_3

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/VoiceQualityPicker;->showWarningMessage()V

    .line 293
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/VoiceQualityPicker;->isResuming:Z

    .line 294
    return-void

    :cond_4
    move v1, v2

    .line 282
    goto :goto_0

    :cond_5
    move v1, v2

    .line 283
    goto :goto_1
.end method
