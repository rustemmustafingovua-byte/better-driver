.class public final enum Lcom/graphhopper/routing/ev/Hazmat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Hazmat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Hazmat;

.field public static final KEY:Ljava/lang/String; = "hazmat"

.field public static final enum NO:Lcom/graphhopper/routing/ev/Hazmat;

.field public static final enum YES:Lcom/graphhopper/routing/ev/Hazmat;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Hazmat;
    .locals 2

    sget-object v0, Lcom/graphhopper/routing/ev/Hazmat;->YES:Lcom/graphhopper/routing/ev/Hazmat;

    sget-object v1, Lcom/graphhopper/routing/ev/Hazmat;->NO:Lcom/graphhopper/routing/ev/Hazmat;

    filled-new-array {v0, v1}, [Lcom/graphhopper/routing/ev/Hazmat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/Hazmat;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hazmat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hazmat;->YES:Lcom/graphhopper/routing/ev/Hazmat;

    new-instance v0, Lcom/graphhopper/routing/ev/Hazmat;

    const-string v1, "NO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hazmat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hazmat;->NO:Lcom/graphhopper/routing/ev/Hazmat;

    invoke-static {}, Lcom/graphhopper/routing/ev/Hazmat;->$values()[Lcom/graphhopper/routing/ev/Hazmat;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Hazmat;->$VALUES:[Lcom/graphhopper/routing/ev/Hazmat;

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
            "Lcom/graphhopper/routing/ev/Hazmat;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "hazmat"

    const-class v2, Lcom/graphhopper/routing/ev/Hazmat;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Hazmat;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Hazmat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Hazmat;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Hazmat;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Hazmat;->$VALUES:[Lcom/graphhopper/routing/ev/Hazmat;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Hazmat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Hazmat;

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
