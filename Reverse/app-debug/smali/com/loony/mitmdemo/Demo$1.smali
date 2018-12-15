.class Lcom/loony/mitmdemo/Demo$1;
.super Ljava/lang/Object;
.source "Demo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loony/mitmdemo/Demo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loony/mitmdemo/Demo;


# direct methods
.method constructor <init>(Lcom/loony/mitmdemo/Demo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/loony/mitmdemo/Demo;

    .line 34
    iput-object p1, p0, Lcom/loony/mitmdemo/Demo$1;->this$0:Lcom/loony/mitmdemo/Demo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/loony/mitmdemo/Demo$1;->this$0:Lcom/loony/mitmdemo/Demo;

    iget-object v0, v0, Lcom/loony/mitmdemo/Demo;->sendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 38
    iget-object v0, p0, Lcom/loony/mitmdemo/Demo$1;->this$0:Lcom/loony/mitmdemo/Demo;

    iget-object v0, v0, Lcom/loony/mitmdemo/Demo;->textView:Landroid/widget/TextView;

    const-string v1, "Wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v0, Lcom/loony/mitmdemo/Demo$SendRequest;

    iget-object v1, p0, Lcom/loony/mitmdemo/Demo$1;->this$0:Lcom/loony/mitmdemo/Demo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/loony/mitmdemo/Demo$SendRequest;-><init>(Lcom/loony/mitmdemo/Demo;Lcom/loony/mitmdemo/Demo$1;)V

    .line 41
    .local v0, "sr":Lcom/loony/mitmdemo/Demo$SendRequest;
    const-string v1, "test"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loony/mitmdemo/Demo$SendRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method
