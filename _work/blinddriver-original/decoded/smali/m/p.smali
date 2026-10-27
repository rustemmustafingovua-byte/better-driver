.class public final enum Lm/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lm/p;

.field public static final enum m:Lm/p;

.field public static final enum n:Lm/p;

.field public static final synthetic o:[Lm/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lm/p;

    const-string v1, "PreEnter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm/p;->l:Lm/p;

    new-instance v1, Lm/p;

    const-string v2, "Visible"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm/p;->m:Lm/p;

    new-instance v2, Lm/p;

    const-string v3, "PostExit"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lm/p;->n:Lm/p;

    filled-new-array {v0, v1, v2}, [Lm/p;

    move-result-object v0

    sput-object v0, Lm/p;->o:[Lm/p;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm/p;
    .locals 1

    const-class v0, Lm/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/p;

    return-object p0
.end method

.method public static values()[Lm/p;
    .locals 1

    sget-object v0, Lm/p;->o:[Lm/p;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/p;

    return-object v0
.end method
