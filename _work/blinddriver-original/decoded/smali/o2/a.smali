.class public final enum Lo2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lo2/a;

.field public static final enum m:Lo2/a;

.field public static final enum n:Lo2/a;

.field public static final synthetic o:[Lo2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo2/a;

    const-string v1, "On"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo2/a;->l:Lo2/a;

    new-instance v1, Lo2/a;

    const-string v2, "Off"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo2/a;->m:Lo2/a;

    new-instance v2, Lo2/a;

    const-string v3, "Indeterminate"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lo2/a;->n:Lo2/a;

    filled-new-array {v0, v1, v2}, [Lo2/a;

    move-result-object v0

    sput-object v0, Lo2/a;->o:[Lo2/a;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo2/a;
    .locals 1

    const-class v0, Lo2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo2/a;

    return-object p0
.end method

.method public static values()[Lo2/a;
    .locals 1

    sget-object v0, Lo2/a;->o:[Lo2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo2/a;

    return-object v0
.end method
