.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 223
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    if-eqz p2, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 115
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 117
    .local v0, alwaysCheck:Z
    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 119
    return-void

    .line 116
    .end local v0           #alwaysCheck:Z
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter
    .parameter "alwaysUseOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZZ)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZZ)V
    .locals 9
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter
    .parameter "alwaysUseOption"
    .parameter "alwaysChoose"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    iget-object v6, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 78
    .local v6, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p3, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    if-eqz p6, :cond_0

    .line 82
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 84
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x109001b

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 85
    iget-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    const v1, 0x1040390

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x10201a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v7

    .line 94
    .local v7, count:I
    const/4 v0, 0x1

    if-gt v7, v0, :cond_1

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2

    if-eqz p7, :cond_2

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 105
    :goto_1
    return-void

    .line 96
    :cond_2
    const/4 v0, 0x1

    if-ne v7, v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 26
    .parameter "ri"
    .parameter "intent"
    .parameter "alwaysCheck"

    .prologue
    .line 122
    if-eqz p3, :cond_b

    .line 124
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v13, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .line 130
    .local v10, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 131
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 132
    .local v9, cat:Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v9           #cat:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v23, "android.intent.category.DEFAULT"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    const/high16 v24, 0xfff

    and-int v9, v23, v24

    .line 138
    .local v9, cat:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 139
    .local v11, data:Landroid/net/Uri;
    const/high16 v23, 0x60

    move v0, v9

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 140
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, mimeType:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 143
    :try_start_0
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v16           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 154
    const/high16 v23, 0x60

    move v0, v9

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-string v23, "file"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    const-string v23, "content"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 157
    :cond_3
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 162
    .local v7, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v7, :cond_5

    .line 163
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 164
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 165
    .local v6, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v11}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v23

    if-ltz v23, :cond_4

    .line 166
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v20

    .line 167
    .local v20, port:I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v23

    if-ltz v20, :cond_9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    :goto_2
    move-object v0, v13

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v20           #port:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v18

    .line 174
    .local v18, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v18, :cond_7

    .line 175
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 176
    .local v19, path:Ljava/lang/String;
    :cond_6
    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 177
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PatternMatcher;

    .line 178
    .local v17, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 179
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getType()I

    move-result v24

    move-object v0, v13

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 187
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v17           #p:Landroid/os/PatternMatcher;
    .end local v18           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v19           #path:Ljava/lang/String;
    :cond_7
    if-eqz v13, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    .line 189
    .local v5, N:I
    move v0, v5

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v22, v0

    .line 190
    .local v22, set:[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 191
    .local v8, bestMatch:I
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_3
    if-ge v14, v5, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v0

    .line 193
    .local v21, r:Landroid/content/pm/ResolveInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v23, v22, v14

    .line 195
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    move/from16 v0, v23

    move v1, v8

    if-le v0, v1, :cond_8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move v8, v0

    .line 191
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 144
    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v14           #i:I
    .end local v21           #r:Landroid/content/pm/ResolveInfo;
    .end local v22           #set:[Landroid/content/ComponentName;
    .restart local v16       #mimeType:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v12

    .line 145
    .local v12, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v23, "ResolverActivity"

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 167
    .end local v12           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v16           #mimeType:Ljava/lang/String;
    .restart local v6       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v7       #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20       #port:I
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 197
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20           #port:I
    .end local p1
    .restart local v5       #N:I
    .restart local v8       #bestMatch:I
    .restart local v14       #i:I
    .restart local v22       #set:[Landroid/content/ComponentName;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v23

    move-object v1, v13

    move v2, v8

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 202
    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v9           #cat:I
    .end local v10           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #data:Landroid/net/Uri;
    .end local v13           #filter:Landroid/content/IntentFilter;
    .end local v14           #i:I
    .end local v22           #set:[Landroid/content/ComponentName;
    :cond_b
    if-eqz p2, :cond_c

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    :cond_c
    return-void
.end method
