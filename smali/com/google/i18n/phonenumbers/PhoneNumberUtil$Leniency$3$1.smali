.class Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;->verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    .line 590
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;->this$0:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p3, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p4, "expectedNumberGroups"    # [Ljava/lang/String;

    .line 595
    invoke-static {p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->allNumberGroupsRemainGrouped(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
