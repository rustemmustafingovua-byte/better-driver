.class public final enum Lu6/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lu6/a;

.field public static final enum m:Lu6/a;

.field public static final enum n:Lu6/a;

.field public static final synthetic o:[Lu6/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu6/a;

    const-string v1, "ALWAYS_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu6/a;->l:Lu6/a;

    new-instance v1, Lu6/a;

    const-string v2, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu6/a;->m:Lu6/a;

    new-instance v2, Lu6/a;

    const-string v3, "DYNAMIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu6/a;->n:Lu6/a;

    filled-new-array {v0, v1, v2}, [Lu6/a;

    move-result-object v0

    sput-object v0, Lu6/a;->o:[Lu6/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu6/a;
    .locals 1

    const-class v0, Lu6/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu6/a;

    return-object p0
.end method

.method public static values()[Lu6/a;
    .locals 1

    sget-object v0, Lu6/a;->o:[Lu6/a;

    invoke-virtual {v0}, [Lu6/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu6/a;

    return-object v0
.end method
