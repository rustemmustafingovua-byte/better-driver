.class final enum Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/subnetwork/TarjanSCC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

.field public static final enum BUILD_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

.field public static final enum FIND_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

.field public static final enum HANDLE_NEIGHBOR:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

.field public static final enum UPDATE:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;
    .locals 4

    sget-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->UPDATE:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sget-object v1, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->HANDLE_NEIGHBOR:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sget-object v2, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->FIND_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sget-object v3, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->BUILD_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->UPDATE:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    new-instance v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    const-string v1, "HANDLE_NEIGHBOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->HANDLE_NEIGHBOR:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    new-instance v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    const-string v1, "FIND_COMPONENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->FIND_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    new-instance v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    const-string v1, "BUILD_COMPONENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->BUILD_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    invoke-static {}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->$values()[Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->$VALUES:[Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->$VALUES:[Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    return-object v0
.end method
