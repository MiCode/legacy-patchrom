.class Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeeklyRepeatList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WeeklyRepeatList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepeatAdapter"
.end annotation


# instance fields
.field private mCheckedTextViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckedTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsInitialized:Z

.field private mIsWeeklyBarChecked:Z

.field public mList:[Ljava/lang/String;

.field private mWeeklyBar:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/WeeklyRepeatList;


# direct methods
.method public constructor <init>(Lcom/android/settings/WeeklyRepeatList;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-virtual {v0}, Lcom/android/settings/WeeklyRepeatList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mList:[Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsInitialized:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    .line 155
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 156
    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsWeeklyBarChecked:Z

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 242
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItemPos()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 163
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_0

    move v2, v5

    .line 173
    :goto_0
    return v2

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 167
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_3

    .line 170
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 171
    goto :goto_0

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    .line 173
    goto :goto_0
.end method

.method public getSelectedItemString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_0

    move-object v3, v6

    .line 189
    :goto_0
    return-object v3

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    const v4, 0x7f0b00ed

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 181
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-virtual {v3}, Lcom/android/settings/WeeklyRepeatList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 184
    .local v2, t:Landroid/widget/CheckedTextView;
    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v2           #t:Landroid/widget/CheckedTextView;
    :cond_3
    move-object v3, v6

    .line 189
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x109000f

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 272
    .local v13, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mList:[Ljava/lang/String;

    move-object v14, v0

    array-length v14, v14

    move/from16 v0, p1

    move v1, v14

    if-lt v0, v1, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f03004d

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    move-object v14, v0

    const v15, 0x7f0b00ee

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    .line 275
    .local v5, bar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setEditMode(Z)V

    .line 276
    invoke-virtual {v5}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->refreshWeeklyBar()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    move-object v14, v0

    const v15, 0x7f0b00ec

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 278
    .local v12, textRepeat:Landroid/widget/TextView;
    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v12

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/settings/WeeklyRepeatList;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0800ca

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const/4 v14, -0x1

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    move-object v14, v0

    const v15, 0x7f0b00ed

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 282
    .local v9, rb:Landroid/widget/RadioButton;
    new-instance v14, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;-><init>(Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;)V

    invoke-virtual {v9, v14}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsWeeklyBarChecked:Z

    move v14, v0

    invoke-virtual {v9, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 292
    invoke-virtual {v5, v9}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setRadioButton(Landroid/widget/RadioButton;)V

    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsInitialized:Z

    move v14, v0

    if-nez v14, :cond_0

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->onLoadCompleted()V

    .line 297
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    move-object v14, v0

    .line 320
    .end local v5           #bar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    .end local v9           #rb:Landroid/widget/RadioButton;
    .end local v12           #textRepeat:Landroid/widget/TextView;
    :goto_0
    return-object v14

    .line 300
    .restart local p1
    :cond_1
    const v14, 0x1020014

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckedTextView;

    .line 301
    .local v11, text:Landroid/widget/CheckedTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mList:[Ljava/lang/String;

    move-object v14, v0

    aget-object v14, v14, p1

    invoke-virtual {v11, v14}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v7, 0x0

    .line 304
    .local v7, foundSameItem:Z
    const/4 v6, -0x1

    .line 305
    .local v6, foundPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckedTextView;

    .line 307
    .local v10, t:Landroid/widget/CheckedTextView;
    invoke-virtual {v10}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 308
    const/4 v7, 0x1

    .line 309
    move v6, v8

    .line 314
    .end local v10           #t:Landroid/widget/CheckedTextView;
    :cond_2
    if-eqz v7, :cond_4

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v6, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v14, v13

    .line 320
    goto :goto_0

    .line 305
    .restart local v10       #t:Landroid/widget/CheckedTextView;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 317
    .end local v10           #t:Landroid/widget/CheckedTextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getWeeklyLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onLoadCompleted()V
    .locals 3

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-virtual {v2}, Lcom/android/settings/WeeklyRepeatList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 256
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 257
    const-string v2, "day_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 258
    .local v1, ret:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->setCheckItemAt(I)V

    .line 260
    .end local v1           #ret:[I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #calls: Lcom/android/settings/WeeklyRepeatList;->restore()V
    invoke-static {v2}, Lcom/android/settings/WeeklyRepeatList;->access$200(Lcom/android/settings/WeeklyRepeatList;)V

    .line 262
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsInitialized:Z

    .line 263
    return-void
.end method

.method public setCheckItemAt(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 193
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    const v4, 0x7f0b00ed

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 194
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    if-lt p1, v3, :cond_0

    .line 195
    iput-boolean v5, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsWeeklyBarChecked:Z

    .line 196
    invoke-virtual {v1}, Landroid/widget/RadioButton;->performClick()Z

    .line 207
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 199
    .local v2, t:Landroid/widget/CheckedTextView;
    invoke-virtual {v2, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 201
    .end local v2           #t:Landroid/widget/CheckedTextView;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_2

    .line 202
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mCheckedTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 203
    :cond_2
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/WeeklyRepeatList;->access$100(Lcom/android/settings/WeeklyRepeatList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 204
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setCheckItemAt(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    .line 210
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mWeeklyBar:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 212
    .local v1, rb:Landroid/widget/RadioButton;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/WeeklyRepeatList;->access$100(Lcom/android/settings/WeeklyRepeatList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 215
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->notifyDataSetChanged()V

    .line 223
    :goto_1
    return-void

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsWeeklyBarChecked:Z

    .line 222
    invoke-virtual {v1}, Landroid/widget/RadioButton;->performClick()Z

    goto :goto_1
.end method

.method public setWeeklyBarChecked(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsWeeklyBarChecked:Z

    .line 231
    return-void
.end method
