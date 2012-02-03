.class Lcom/android/server/InputMethodManagerService$6;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showCursorControllerSearchDialogInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1885
    const/4 v1, 0x0

    .line 1887
    .local v1, query:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1902
    :goto_0
    if-eqz v1, :cond_0

    .line 1903
    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mSearchText:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1904
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1905
    .local v0, intentSearchText:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1907
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    .end local v0           #intentSearchText:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1889
    :pswitch_0
    new-instance v1, Ljava/lang/String;

    .end local v1           #query:Ljava/lang/String;
    const-string v2, "http://www.google.com/m?q=%s"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1890
    .restart local v1       #query:Ljava/lang/String;
    goto :goto_0

    .line 1892
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    .end local v1           #query:Ljava/lang/String;
    const-string v2, "http://translate.google.com/m?hl=en&sl=auto&tl=en&prev=_m&q=%s"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1893
    .restart local v1       #query:Ljava/lang/String;
    goto :goto_0

    .line 1895
    :pswitch_2
    new-instance v1, Ljava/lang/String;

    .end local v1           #query:Ljava/lang/String;
    const-string v2, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1896
    .restart local v1       #query:Ljava/lang/String;
    goto :goto_0

    .line 1898
    :pswitch_3
    new-instance v1, Ljava/lang/String;

    .end local v1           #query:Ljava/lang/String;
    const-string v2, "http://dictionary.reference.com/search?q=%s"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1       #query:Ljava/lang/String;
    goto :goto_0

    .line 1908
    .restart local v0       #intentSearchText:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1887
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
