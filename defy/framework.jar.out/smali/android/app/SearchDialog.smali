.class public Landroid/app/SearchDialog;
.super Landroid/app/Dialog;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchDialog$SearchAutoComplete;,
        Landroid/app/SearchDialog$SearchBar;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOG_TIMING:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final INSTANCE_KEY_APPDATA:Ljava/lang/String; = "data"

.field private static final INSTANCE_KEY_COMPONENT:Ljava/lang/String; = "comp"

.field private static final INSTANCE_KEY_STORED_APPDATA:Ljava/lang/String; = "sData"

.field private static final INSTANCE_KEY_USER_QUERY:Ljava/lang/String; = "uQry"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchDialog"

.field private static final REWRITE_QUERIES:Z = true

.field private static final SEARCH_PLATE_LEFT_PADDING_GLOBAL:I = 0xc

.field private static final SEARCH_PLATE_LEFT_PADDING_NON_GLOBAL:I = 0x7


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mBadgeLabel:Landroid/widget/TextView;

.field mButtonsKeyListener:Landroid/view/View$OnKeyListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mGoButton:Landroid/widget/Button;

.field mGoButtonClickListener:Landroid/view/View$OnClickListener;

.field private mInitialQuery:Ljava/lang/String;

.field private mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLaunchComponent:Landroid/content/ComponentName;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

.field private mSearchAutoCompleteImeOptions:I

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUserQuery:Ljava/lang/String;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/widget/ImageButton;

.field mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;

.field private mWorkingSpinner:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchManager;)V
    .locals 4
    .parameter "context"
    .parameter "searchManager"

    .prologue
    const/high16 v3, 0x1000

    const v0, 0x10300a4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchDialog;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/app/SearchDialog$1;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$1;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/app/SearchDialog$2;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$2;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Landroid/app/SearchDialog$3;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$3;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/app/SearchDialog$4;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$4;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mGoButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/app/SearchDialog$5;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$5;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/app/SearchDialog$6;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$6;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-object p2, p0, Landroid/app/SearchDialog;->mSearchManager:Landroid/app/SearchManager;

    return-void
.end method

.method static synthetic access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/SearchDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/SearchDialog;Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/SearchDialog;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/SearchDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/app/SearchDialog;Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/SearchDialog;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/app/SearchDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/SearchDialog;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/app/SearchDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/SearchDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/SearchDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateWidgetState()V

    return-void
.end method

.method static synthetic access$500(Landroid/app/SearchDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/app/SearchDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/SearchDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->updateVoiceButton(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/SearchDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return v0
.end method

.method static synthetic access$902(Landroid/app/SearchDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return p1
.end method

.method private closeSuggestionsAdapter()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    move-object v0, v2

    check-cast v0, Landroid/app/SuggestionsAdapter;

    move-object v1, v0

    invoke-virtual {v3, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v1}, Landroid/app/SuggestionsAdapter;->close()V

    :cond_0
    iput-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v1, 0x109005e

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->setContentView(I)V

    const v1, 0x102024c

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/app/SearchDialog$SearchBar;

    .local v0, searchBar:Landroid/app/SearchDialog$SearchBar;
    invoke-virtual {v0, p0}, Landroid/app/SearchDialog$SearchBar;->setSearchDialog(Landroid/app/SearchDialog;)V

    const v1, 0x102024e

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    const v1, 0x1020251

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/app/SearchDialog$SearchAutoComplete;

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const v1, 0x1020250

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    const v1, 0x1020252

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    const v1, 0x1020253

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    const v1, 0x102024d

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v2, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->setWorking(Z)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v2, p0, Landroid/app/SearchDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v2, p0, Landroid/app/SearchDialog;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/app/SearchDialog;->mGoButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "componentName"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v1, "app_data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p6, :cond_4

    const-string v1, "action_key"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 13
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, action:Ljava/lang/String;
    const-string v0, "android.search.action.ZILCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .end local v1           #action:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1       #action:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "android.intent.action.SEARCH"

    :cond_2
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, data:Ljava/lang/String;
    if-nez v8, :cond_3

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_4

    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, id:Ljava/lang/String;
    if-eqz v11, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v11           #id:Ljava/lang/String;
    :cond_4
    if-nez v8, :cond_5

    const/4 v0, 0x0

    move-object v2, v0

    .local v2, dataUri:Landroid/net/Uri;
    :goto_1
    const-string v0, "suggest_intent_component"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, componentName:Ljava/lang/String;
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, query:Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v5           #componentName:Ljava/lang/String;
    :cond_5
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .end local v1           #action:Ljava/lang/String;
    .end local v8           #data:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .local v12, rowNum:I
    :goto_2
    const-string v0, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Suggestions cursor at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v12           #rowNum:I
    :catch_1
    move-exception v10

    .local v10, e2:Ljava/lang/RuntimeException;
    const/4 v12, -0x1

    .restart local v12       #rowNum:I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, queryExtras:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    const-string v10, "app_data"

    iget-object v11, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, maxResults:I
    iget-object v10, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "calling_package"

    if-nez v8, :cond_5

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v9

    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v1, voiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, searchActivity:Landroid/content/ComponentName;
    const-string v2, "calling_package"

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private dbgLogTiming(Ljava/lang/String;)V
    .locals 9
    .parameter "caller"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, millis:J
    iget-object v7, p0, Landroid/app/SearchDialog;->mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .local v4, oldTime:J
    sub-long v0, v2, v4

    .local v0, delta:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") ticks for Search keystroke in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, report:Ljava/lang/String;
    const-string v7, "SearchDialog"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "componentName"
    .parameter "appSearchData"

    .prologue
    invoke-direct {p0, p3, p4}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->selectAll()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method private fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inUrl"

    .prologue
    const-string v4, "http://"

    const-string v3, "://"

    const-string v1, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    .end local p1
    .local v0, inUrl:Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0           #inUrl:Ljava/lang/String;
    .restart local p1
    :cond_1
    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string v1, "http:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    const-string v1, "/"

    const-string v2, "//"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    const-string v1, "://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v0, p1

    .end local p1
    .restart local v0       #inUrl:Ljava/lang/String;
    goto :goto_0

    .end local v0           #inUrl:Ljava/lang/String;
    .restart local p1
    :cond_6
    const-string v1, ":"

    const-string v2, "://"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "actionKey"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private isBrowserSearch()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .local v2, y:I
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .local v0, slop:I
    neg-int v3, v0

    if-lt v1, v3, :cond_0

    neg-int v3, v0

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const-string v4, "SearchDialog"

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "SearchDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting (as ourselves) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    const/16 v5, 0x42

    if-eq p2, v5, :cond_2

    const/16 v5, 0x54

    if-ne p2, v5, :cond_3

    :cond_2
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    .local v3, position:I
    invoke-virtual {p0, v3}, Landroid/app/SearchDialog;->launchSuggestion(I)Z

    move-result v5

    goto :goto_0

    .end local v3           #position:I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v5, 0x16

    if-ne p2, v5, :cond_6

    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v6

    .local v4, selPoint:I
    :goto_1
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v4}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/app/SearchDialog$SearchAutoComplete;->setListSelection(I)V

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->clearListSelection()V

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v7}, Landroid/app/SearchDialog$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v7

    goto :goto_0

    .end local v4           #selPoint:I
    :cond_5
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->length()I

    move-result v5

    move v4, v5

    goto :goto_1

    :cond_6
    const/16 v5, 0x13

    if-ne p2, v5, :cond_7

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    move v5, v6

    goto :goto_0

    :cond_7
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v5, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    .restart local v3       #position:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    iget-object v5, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v5}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v2, v0}, Landroid/app/SearchDialog;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .local v1, actionMsg:Ljava/lang/String;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    invoke-virtual {p0, v3, p2, v1}, Landroid/app/SearchDialog;->launchSuggestion(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .end local v0           #actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    .end local v1           #actionMsg:Ljava/lang/String;
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #position:I
    :cond_9
    move v5, v6

    goto/16 :goto_0
.end method

.method private restoreUserQuery()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/SearchDialog;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 5
    .parameter "position"

    .prologue
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2, v0}, Landroid/app/SuggestionsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    goto :goto_0

    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_2
    const-string v2, "SearchDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad suggestion position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    goto :goto_0
.end method

.method private setBrowserApplicationId(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, data:Landroid/net/Uri;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .local v1, scheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v1           #scheme:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "query"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private setUserQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "componentName"
    .parameter "appSearchData"

    .prologue
    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iput-object p1, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    iput-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/app/SearchDialog;->createContentView()V

    invoke-virtual {p0}, Landroid/app/SearchDialog;->show()V

    :cond_1
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateUI()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateQueryHint()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .local v0, hint:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .local v1, hintId:I
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v1           #hintId:I
    :cond_0
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .end local v0           #hint:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateSearchAppIcon()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/16 v5, 0xc

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .local v2, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/4 v5, 0x7

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    const-string v4, "SearchDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found, using generic app icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSearchAutoComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/SearchDialog;->closeSuggestionsAdapter()V

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setThreshold(I)V

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownDismissedOnCompletion(Z)V

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setForceIgnoreOutsideTouch(Z)V

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v3, p0, Landroid/app/SearchDialog;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/app/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/app/SearchDialog;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private updateSearchBadge()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    .local v2, visibility:I
    const/4 v0, 0x0

    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, text:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeLabel()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getLabelId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSearchButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .local v2, textLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, iconLabel:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSearchButtonText()I

    move-result v1

    .local v1, textId:I
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10801ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10801ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAutoComplete()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchButton()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateQueryHint()V

    iget-object v1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->updateVoiceButton(Z)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget v2, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const-string v2, "nm"

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .end local v0           #inputType:I
    :cond_1
    :goto_0
    return-void

    .restart local v0       #inputType:I
    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVoiceButton(Z)V
    .locals 8
    .parameter "empty"

    .prologue
    const/16 v2, 0x8

    .local v2, visibility:I
    iget-object v5, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    const-string v6, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .local v1, testIntent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_2
    if-nez v2, :cond_4

    const/4 v3, 0x0

    .local v3, voiceSearchEnabled:Z
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchManager:Landroid/app/SearchManager;

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    const-string v6, "search"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    iput-object v5, p0, Landroid/app/SearchDialog;->mSearchManager:Landroid/app/SearchManager;

    :cond_3
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->getDefaultSearchableForWebSearch()Landroid/app/SearchableInfo;

    move-result-object v4

    .local v4, webSearchable:Landroid/app/SearchableInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v2, 0x8

    .end local v3           #voiceSearchEnabled:Z
    .end local v4           #webSearchable:Landroid/app/SearchableInfo;
    :cond_4
    iget-object v5, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateWidgetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    #calls: Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z
    invoke-static {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .local v0, enabled:Z
    :goto_0
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const v2, 0x1080396

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    :goto_1
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v4

    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_1
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const v2, 0x1080398

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method public launchQuerySearch()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    return-void
.end method

.method protected launchQuerySearch(ILjava/lang/String;)V
    .locals 9
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, query:Ljava/lang/String;
    const-string v1, "android.intent.action.SEARCH"

    .local v1, action:Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .local v8, intent:Landroid/content/Intent;
    invoke-direct {p0, v8}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected launchSuggestion(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/SearchDialog;->launchSuggestion(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2, p3}, Landroid/app/SearchDialog;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchButton()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    invoke-direct {p0}, Landroid/app/SearchDialog;->updateQueryHint()V

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SearchDialog;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->ensureImeVisible(Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->showDropDownAfterLayout()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method onDataSetChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v1}, Landroid/app/SuggestionsAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->onFilterComplete(I)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Landroid/app/SearchDialog;->launchSuggestion(I)Z

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Landroid/app/SearchDialog;->rewriteQueryFromSuggestion(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "comp"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, launchComponent:Landroid/content/ComponentName;
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v3, "uQry"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, userQuery:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "comp"

    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "uQry"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Landroid/app/SearchDialog;->closeSuggestionsAdapter()V

    iput-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    iput-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    iput-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    iput-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Landroid/app/SearchDialog;->isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setListSelection(I)V

    return-void
.end method

.method public setWorking(Z)V
    .locals 3
    .parameter "working"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "componentName"
    .parameter "appSearchData"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .local v0, success:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->showDropDownAfterLayout()V

    :cond_0
    return v0
.end method
