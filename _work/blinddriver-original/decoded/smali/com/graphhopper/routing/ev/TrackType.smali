.class public final enum Lcom/graphhopper/routing/ev/TrackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/TrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/TrackType;

.field public static final enum GRADE1:Lcom/graphhopper/routing/ev/TrackType;

.field public static final enum GRADE2:Lcom/graphhopper/routing/ev/TrackType;

.field public static final enum GRADE3:Lcom/graphhopper/routing/ev/TrackType;

.field public static final enum GRADE4:Lcom/graphhopper/routing/ev/TrackType;

.field public static final enum GRADE5:Lcom/graphhopper/routing/ev/TrackType;

.field public static final KEY:Ljava/lang/String; = "track_type"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/TrackType;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/TrackType;
    .locals 6

    sget-object v0, Lcom/graphhopper/routing/ev/TrackType;->MISSING:Lcom/graphhopper/routing/ev/TrackType;

    sget-object v1, Lcom/graphhopper/routing/ev/TrackType;->GRADE1:Lcom/graphhopper/routing/ev/TrackType;

    sget-object v2, Lcom/graphhopper/routing/ev/TrackType;->GRADE2:Lcom/graphhopper/routing/ev/TrackType;

    sget-object v3, Lcom/graphhopper/routing/ev/TrackType;->GRADE3:Lcom/graphhopper/routing/ev/TrackType;

    sget-object v4, Lcom/graphhopper/routing/ev/TrackType;->GRADE4:Lcom/graphhopper/routing/ev/TrackType;

    sget-object v5, Lcom/graphhopper/routing/ev/TrackType;->GRADE5:Lcom/graphhopper/routing/ev/TrackType;

    filled-new-array/range {v0 .. v5}, [Lcom/graphhopper/routing/ev/TrackType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/TrackType;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->MISSING:Lcom/graphhopper/routing/ev/TrackType;

    new-instance v0, Lcom/graphhopper/routing/ev/TrackType;

    const-string v1, "GRADE1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->GRADE1:Lcom/graphhopper/routing/ev/TrackType;

    new-instance v0, Lcom/graphhopper/routing/ev/TrackType;

    const-string v1, "GRADE2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->GRADE2:Lcom/graphhopper/routing/ev/TrackType;

    new-instance v0, Lcom/graphhopper/routing/ev/TrackType;

    const-string v1, "GRADE3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->GRADE3:Lcom/graphhopper/routing/ev/TrackType;

    new-instance v0, Lcom/graphhopper/routing/ev/TrackType;

    const-string v1, "GRADE4"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->GRADE4:Lcom/graphhopper/routing/ev/TrackType;

    new-instance v0, Lcom/graphhopper/routing/ev/TrackType;

    const-string v1, "GRADE5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->GRADE5:Lcom/graphhopper/routing/ev/TrackType;

    invoke-static {}, Lcom/graphhopper/routing/ev/TrackType;->$values()[Lcom/graphhopper/routing/ev/TrackType;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/TrackType;->$VALUES:[Lcom/graphhopper/routing/ev/TrackType;

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

.method public static create()Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/TrackType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "track_type"

    const-class v2, Lcom/graphhopper/routing/ev/TrackType;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/TrackType;
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/TrackType;->MISSING:Lcom/graphhopper/routing/ev/TrackType;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/TrackType;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/TrackType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/TrackType;->MISSING:Lcom/graphhopper/routing/ev/TrackType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/TrackType;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/TrackType;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/TrackType;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/TrackType;->$VALUES:[Lcom/graphhopper/routing/ev/TrackType;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/TrackType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
