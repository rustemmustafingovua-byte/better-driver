.class public final enum Ldd/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Ldd/j;

.field public static final enum m:Ldd/j;

.field public static final enum n:Ldd/j;

.field public static final synthetic o:[Ldd/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldd/j;

    const-string v1, "SITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/j;->l:Ldd/j;

    new-instance v1, Ldd/j;

    const-string v2, "ZONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldd/j;->m:Ldd/j;

    new-instance v2, Ldd/j;

    const-string v3, "NEAREST_ID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ldd/j;->n:Ldd/j;

    filled-new-array {v0, v1, v2}, [Ldd/j;

    move-result-object v0

    sput-object v0, Ldd/j;->o:[Ldd/j;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldd/j;
    .locals 1

    const-class v0, Ldd/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/j;

    return-object p0
.end method

.method public static values()[Ldd/j;
    .locals 1

    sget-object v0, Ldd/j;->o:[Ldd/j;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/j;

    return-object v0
.end method
