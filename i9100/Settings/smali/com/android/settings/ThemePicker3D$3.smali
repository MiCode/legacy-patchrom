.class Lcom/android/settings/ThemePicker3D$3;
.super Ljava/lang/Object;
.source "ThemePicker3D.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ThemePicker3D;->makeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ThemePicker3D;


# direct methods
.method constructor <init>(Lcom/android/settings/ThemePicker3D;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 298
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mCurrentThemeIndex:I
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$700(Lcom/android/settings/ThemePicker3D;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mTitleIndicator:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$900(Lcom/android/settings/ThemePicker3D;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/ThemePicker3D;->access$800(Lcom/android/settings/ThemePicker3D;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-virtual {v2}, Lcom/android/settings/ThemePicker3D;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08061f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #setter for: Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I
    invoke-static {v0, p3}, Lcom/android/settings/ThemePicker3D;->access$302(Lcom/android/settings/ThemePicker3D;I)I

    .line 304
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$1000(Lcom/android/settings/ThemePicker3D;)Lcom/android/settings/ThemePicker3D$ImageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/settings/ThemePicker3D;->access$300(Lcom/android/settings/ThemePicker3D;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemePicker3D$ImageAdapter;->updateCurrentIndex(I)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mIndexIndicator:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$1100(Lcom/android/settings/ThemePicker3D;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-virtual {v2}, Lcom/android/settings/ThemePicker3D;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08061d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/ThemePicker3D;->access$800(Lcom/android/settings/ThemePicker3D;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mTitleIndicator:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$900(Lcom/android/settings/ThemePicker3D;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D$3;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/ThemePicker3D;->access$800(Lcom/android/settings/ThemePicker3D;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .line 313
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
