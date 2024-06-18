.class public final enum Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
.super Ljava/lang/Enum;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConferenceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

.field public static final enum COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

.field public static final enum IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

.field public static final enum PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    new-instance v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const-string v3, "PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    new-instance v3, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const-string v5, "COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 58
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->$VALUES:[Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .locals 1

    .line 58
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->$VALUES:[Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    return-object v0
.end method
