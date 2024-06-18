.class public final enum Lorg/codeaurora/ims/DriverCallIms$State;
.super Ljava/lang/Enum;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/DriverCallIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/DriverCallIms$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum END:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum WAITING:Lorg/codeaurora/ims/DriverCallIms$State;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 62
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 63
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v3, "HOLDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 64
    new-instance v3, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v5, "DIALING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 65
    new-instance v5, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v7, "ALERTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 66
    new-instance v7, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v9, "INCOMING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 67
    new-instance v9, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v11, "WAITING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 68
    new-instance v11, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v13, "END"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 61
    const/4 v13, 0x7

    new-array v13, v13, [Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/codeaurora/ims/DriverCallIms$State;->$VALUES:[Lorg/codeaurora/ims/DriverCallIms$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 61
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->$VALUES:[Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/DriverCallIms$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method
