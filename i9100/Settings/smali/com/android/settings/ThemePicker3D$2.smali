.class Lcom/android/settings/ThemePicker3D$2;
.super Ljava/lang/Object;
.source "ThemePicker3D.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$cb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/ThemePicker3D;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings/ThemePicker3D$2;->this$0:Lcom/android/settings/ThemePicker3D;

    iput-object p2, p0, Lcom/android/settings/ThemePicker3D$2;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$2;->val$cb:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 284
    invoke-static {p2}, Lcom/android/settings/ThemePicker3D;->access$602(Z)Z

    .line 285
    return-void
.end method
