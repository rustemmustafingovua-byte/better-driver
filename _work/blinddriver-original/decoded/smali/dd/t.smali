.class public final enum Ldd/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Ldd/t;

.field public static final enum m:Ldd/t;

.field public static final enum n:Ldd/t;

.field public static final synthetic o:[Ldd/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldd/t;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/t;->l:Ldd/t;

    new-instance v1, Ldd/t;

    const-string v2, "DEGRADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldd/t;->m:Ldd/t;

    new-instance v2, Ldd/t;

    const-string v3, "LOST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ldd/t;->n:Ldd/t;

    filled-new-array {v0, v1, v2}, [Ldd/t;

    move-result-object v0

    sput-object v0, Ldd/t;->o:[Ldd/t;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldd/t;
    .locals 1

    const-class v0, Ldd/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/t;

    return-object p0
.end method

.method public static values()[Ldd/t;
    .locals 1

    sget-object v0, Ldd/t;->o:[Ldd/t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/t;

    return-object v0
.end method
