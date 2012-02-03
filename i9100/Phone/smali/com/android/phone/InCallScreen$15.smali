.class Lcom/android/phone/InCallScreen$15;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showEmailSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4401
    iput-object p1, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 4404
    return-void
.end method
