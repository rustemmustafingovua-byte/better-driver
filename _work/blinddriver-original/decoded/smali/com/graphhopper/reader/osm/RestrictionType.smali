.class public final enum Lcom/graphhopper/reader/osm/RestrictionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/reader/osm/RestrictionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/reader/osm/RestrictionType;

.field public static final enum NO:Lcom/graphhopper/reader/osm/RestrictionType;

.field public static final enum ONLY:Lcom/graphhopper/reader/osm/RestrictionType;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/reader/osm/RestrictionType;
    .locals 2

    sget-object v0, Lcom/graphhopper/reader/osm/RestrictionType;->NO:Lcom/graphhopper/reader/osm/RestrictionType;

    sget-object v1, Lcom/graphhopper/reader/osm/RestrictionType;->ONLY:Lcom/graphhopper/reader/osm/RestrictionType;

    filled-new-array {v0, v1}, [Lcom/graphhopper/reader/osm/RestrictionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionType;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/osm/RestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/reader/osm/RestrictionType;->NO:Lcom/graphhopper/reader/osm/RestrictionType;

    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionType;

    const-string v1, "ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/osm/RestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/reader/osm/RestrictionType;->ONLY:Lcom/graphhopper/reader/osm/RestrictionType;

    invoke-static {}, Lcom/graphhopper/reader/osm/RestrictionType;->$values()[Lcom/graphhopper/reader/osm/RestrictionType;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/RestrictionType;->$VALUES:[Lcom/graphhopper/reader/osm/RestrictionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/reader/osm/RestrictionType;
    .locals 1

    const-class v0, Lcom/graphhopper/reader/osm/RestrictionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/reader/osm/RestrictionType;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/reader/osm/RestrictionType;
    .locals 1

    sget-object v0, Lcom/graphhopper/reader/osm/RestrictionType;->$VALUES:[Lcom/graphhopper/reader/osm/RestrictionType;

    invoke-virtual {v0}, [Lcom/graphhopper/reader/osm/RestrictionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/reader/osm/RestrictionType;

    return-object v0
.end method
