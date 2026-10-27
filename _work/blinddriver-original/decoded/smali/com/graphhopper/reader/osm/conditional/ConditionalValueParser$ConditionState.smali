.class public final enum Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

.field public static final enum FALSE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

.field public static final enum INVALID:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

.field public static final enum TRUE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;


# instance fields
.field checkPassed:Z

.field valid:Z


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;
    .locals 3

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->TRUE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    sget-object v1, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->FALSE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    sget-object v2, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->INVALID:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    filled-new-array {v0, v1, v2}, [Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->TRUE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    new-instance v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->FALSE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    new-instance v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    const-string v1, "INVALID"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->INVALID:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    invoke-static {}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->$values()[Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->$VALUES:[Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->valid:Z

    iput-boolean p4, p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->checkPassed:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;
    .locals 1

    const-class v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;
    .locals 1

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->$VALUES:[Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    invoke-virtual {v0}, [Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    return-object v0
.end method


# virtual methods
.method public isCheckPassed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->checkPassed:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call this method for invalid state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->valid:Z

    return p0
.end method
