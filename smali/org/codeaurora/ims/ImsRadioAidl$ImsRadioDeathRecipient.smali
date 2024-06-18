.class final Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRadioAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsRadioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsRadioDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsRadioAidl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsRadioAidl;

    .line 108
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsRadioAidl;

    const-string v1, " IImsRadio Died"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->-$$Nest$mloge(Lorg/codeaurora/ims/ImsRadioAidl;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioAidl;->-$$Nest$mresetService(Lorg/codeaurora/ims/ImsRadioAidl;)V

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioAidl;->-$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioAidl;)V

    .line 117
    return-void
.end method
