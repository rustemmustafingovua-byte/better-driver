.class final enum Ldadb/forwarding/TcpForwarder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/forwarding/TcpForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldadb/forwarding/TcpForwarder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lb9/a;

.field private static final synthetic $VALUES:[Ldadb/forwarding/TcpForwarder$State;

.field public static final enum STARTED:Ldadb/forwarding/TcpForwarder$State;

.field public static final enum STARTING:Ldadb/forwarding/TcpForwarder$State;

.field public static final enum STOPPED:Ldadb/forwarding/TcpForwarder$State;

.field public static final enum STOPPING:Ldadb/forwarding/TcpForwarder$State;


# direct methods
.method private static final synthetic $values()[Ldadb/forwarding/TcpForwarder$State;
    .locals 4

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->STARTING:Ldadb/forwarding/TcpForwarder$State;

    sget-object v1, Ldadb/forwarding/TcpForwarder$State;->STARTED:Ldadb/forwarding/TcpForwarder$State;

    sget-object v2, Ldadb/forwarding/TcpForwarder$State;->STOPPING:Ldadb/forwarding/TcpForwarder$State;

    sget-object v3, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    filled-new-array {v0, v1, v2, v3}, [Ldadb/forwarding/TcpForwarder$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldadb/forwarding/TcpForwarder$State;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldadb/forwarding/TcpForwarder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldadb/forwarding/TcpForwarder$State;->STARTING:Ldadb/forwarding/TcpForwarder$State;

    new-instance v0, Ldadb/forwarding/TcpForwarder$State;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldadb/forwarding/TcpForwarder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldadb/forwarding/TcpForwarder$State;->STARTED:Ldadb/forwarding/TcpForwarder$State;

    new-instance v0, Ldadb/forwarding/TcpForwarder$State;

    const-string v1, "STOPPING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldadb/forwarding/TcpForwarder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldadb/forwarding/TcpForwarder$State;->STOPPING:Ldadb/forwarding/TcpForwarder$State;

    new-instance v0, Ldadb/forwarding/TcpForwarder$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldadb/forwarding/TcpForwarder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    invoke-static {}, Ldadb/forwarding/TcpForwarder$State;->$values()[Ldadb/forwarding/TcpForwarder$State;

    move-result-object v0

    sput-object v0, Ldadb/forwarding/TcpForwarder$State;->$VALUES:[Ldadb/forwarding/TcpForwarder$State;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    move-result-object v0

    sput-object v0, Ldadb/forwarding/TcpForwarder$State;->$ENTRIES:Lb9/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lb9/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb9/a;"
        }
    .end annotation

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->$ENTRIES:Lb9/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldadb/forwarding/TcpForwarder$State;
    .locals 1

    const-class v0, Ldadb/forwarding/TcpForwarder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldadb/forwarding/TcpForwarder$State;

    return-object p0
.end method

.method public static values()[Ldadb/forwarding/TcpForwarder$State;
    .locals 1

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->$VALUES:[Ldadb/forwarding/TcpForwarder$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldadb/forwarding/TcpForwarder$State;

    return-object v0
.end method
