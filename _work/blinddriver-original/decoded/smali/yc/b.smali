.class public final enum Lyc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lyc/b;

.field public static final enum m:Lyc/b;

.field public static final enum n:Lyc/b;

.field public static final enum o:Lyc/b;

.field public static final synthetic p:[Lyc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyc/b;

    const-string v1, "HOUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyc/b;->l:Lyc/b;

    new-instance v1, Lyc/b;

    const-string v2, "STREET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyc/b;->m:Lyc/b;

    new-instance v2, Lyc/b;

    const-string v3, "PLACE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyc/b;->n:Lyc/b;

    new-instance v3, Lyc/b;

    const-string v4, "POI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyc/b;->o:Lyc/b;

    filled-new-array {v0, v1, v2, v3}, [Lyc/b;

    move-result-object v0

    sput-object v0, Lyc/b;->p:[Lyc/b;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/b;
    .locals 1

    const-class v0, Lyc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/b;

    return-object p0
.end method

.method public static values()[Lyc/b;
    .locals 1

    sget-object v0, Lyc/b;->p:[Lyc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/b;

    return-object v0
.end method
