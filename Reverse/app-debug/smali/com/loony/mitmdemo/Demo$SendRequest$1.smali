.class Lcom/loony/mitmdemo/Demo$SendRequest$1;
.super Ljava/lang/Object;
.source "Demo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loony/mitmdemo/Demo$SendRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loony/mitmdemo/Demo$SendRequest;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loony/mitmdemo/Demo$SendRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/loony/mitmdemo/Demo$SendRequest;

    .line 55
    iput-object p1, p0, Lcom/loony/mitmdemo/Demo$SendRequest$1;->this$1:Lcom/loony/mitmdemo/Demo$SendRequest;

    iput-object p2, p0, Lcom/loony/mitmdemo/Demo$SendRequest$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/loony/mitmdemo/Demo$SendRequest$1;->this$1:Lcom/loony/mitmdemo/Demo$SendRequest;

    iget-object v0, v0, Lcom/loony/mitmdemo/Demo$SendRequest;->this$0:Lcom/loony/mitmdemo/Demo;

    iget-object v0, v0, Lcom/loony/mitmdemo/Demo;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/loony/mitmdemo/Demo$SendRequest$1;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/loony/mitmdemo/Demo$SendRequest$1;->this$1:Lcom/loony/mitmdemo/Demo$SendRequest;

    iget-object v0, v0, Lcom/loony/mitmdemo/Demo$SendRequest;->this$0:Lcom/loony/mitmdemo/Demo;

    iget-object v0, v0, Lcom/loony/mitmdemo/Demo;->sendButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 60
    return-void
.end method
