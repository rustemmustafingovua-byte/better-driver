.class public final enum Le2/d2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Le2/d2;

.field public static final enum m:Le2/d2;

.field public static final enum n:Le2/d2;

.field public static final synthetic o:[Le2/d2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Le2/d2;

    const-string v1, "ContinueTraversal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/d2;->l:Le2/d2;

    new-instance v1, Le2/d2;

    const-string v2, "SkipSubtreeAndContinueTraversal"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/d2;->m:Le2/d2;

    new-instance v2, Le2/d2;

    const-string v3, "CancelTraversal"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Le2/d2;->n:Le2/d2;

    filled-new-array {v0, v1, v2}, [Le2/d2;

    move-result-object v0

    sput-object v0, Le2/d2;->o:[Le2/d2;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le2/d2;
    .locals 1

    const-class v0, Le2/d2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/d2;

    return-object p0
.end method

.method public static values()[Le2/d2;
    .locals 1

    sget-object v0, Le2/d2;->o:[Le2/d2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/d2;

    return-object v0
.end method
