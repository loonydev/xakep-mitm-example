.class public Lcom/loony/mitmdemo/Demo;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Demo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loony/mitmdemo/Demo$SendRequest;
    }
.end annotation


# instance fields
.field sendButton:Landroid/widget/Button;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/loony/mitmdemo/Demo;->setContentView(I)V

    .line 31
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/loony/mitmdemo/Demo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/loony/mitmdemo/Demo;->sendButton:Landroid/widget/Button;

    .line 32
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/loony/mitmdemo/Demo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/loony/mitmdemo/Demo;->textView:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/loony/mitmdemo/Demo;->sendButton:Landroid/widget/Button;

    new-instance v1, Lcom/loony/mitmdemo/Demo$1;

    invoke-direct {v1, p0}, Lcom/loony/mitmdemo/Demo$1;-><init>(Lcom/loony/mitmdemo/Demo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
