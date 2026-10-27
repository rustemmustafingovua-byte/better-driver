.class public final enum Ldd/u0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Ldd/u0;

.field public static final enum m:Ldd/u0;

.field public static final enum n:Ldd/u0;

.field public static final synthetic o:[Ldd/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldd/u0;

    const-string v1, "GOOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/u0;->l:Ldd/u0;

    new-instance v1, Ldd/u0;

    const-string v2, "SUSPECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldd/u0;->m:Ldd/u0;

    new-instance v2, Ldd/u0;

    const-string v3, "BAD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ldd/u0;->n:Ldd/u0;

    filled-new-array {v0, v1, v2}, [Ldd/u0;

    move-result-object v0

    sput-object v0, Ldd/u0;->o:[Ldd/u0;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldd/u0;
    .locals 1

    const-class v0, Ldd/u0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/u0;

    return-object p0
.end method

.method public static values()[Ldd/u0;
    .locals 1

    sget-object v0, Ldd/u0;->o:[Ldd/u0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/u0;

    return-object v0
.end method
