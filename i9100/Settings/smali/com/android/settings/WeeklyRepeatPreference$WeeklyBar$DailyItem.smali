.class public Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;
.super Landroid/widget/TextView;
.source "WeeklyRepeatPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DailyItem"
.end annotation


# instance fields
.field private mIsChecked:Z

.field final synthetic this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 194
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    .line 195
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 196
    const/high16 v0, 0x41b0

    invoke-virtual {p0, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setTextSize(F)V

    .line 197
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setPadding(IIII)V

    .line 198
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setGravity(I)V

    .line 199
    #getter for: Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mIsEditMode:Z
    invoke-static {p1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->access$000(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem$1;-><init>(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->mIsChecked:Z

    return v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->mIsChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const v3, 0x7f070005

    const/4 v5, 0x0

    const v2, -0x777778

    .line 223
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    #getter for: Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mIsEditMode:Z
    invoke-static {v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->access$000(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    iget-boolean v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->mIsChecked:Z

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->this$0:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    #getter for: Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->access$100(Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setBackgroundColor(I)V

    .line 232
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->getBottom()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 241
    .end local v0           #paint:Landroid/graphics/Paint;
    :goto_1
    return-void

    .line 229
    :cond_0
    const v1, -0xbbbbbc

    invoke-virtual {p0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setBackgroundColor(I)V

    goto :goto_0

    .line 230
    :cond_1
    const/high16 v1, -0x100

    invoke-virtual {p0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setBackgroundColor(I)V

    goto :goto_0

    .line 237
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->mIsChecked:Z

    if-eqz v1, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setTextColor(I)V

    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->setTextColor(I)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->mIsChecked:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar$DailyItem;->invalidate()V

    .line 215
    return-void
.end method
