.class public final enum Lc6/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lc6/j;

.field public static final enum m:Lc6/j;

.field public static final enum n:Lc6/j;

.field public static final synthetic o:[Lc6/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc6/j;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc6/j;->l:Lc6/j;

    new-instance v1, Lc6/j;

    const-string v2, "STATIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc6/j;->m:Lc6/j;

    new-instance v2, Lc6/j;

    const-string v3, "DEFAULT_TYPING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc6/j;->n:Lc6/j;

    filled-new-array {v0, v1, v2}, [Lc6/j;

    move-result-object v0

    sput-object v0, Lc6/j;->o:[Lc6/j;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/j;
    .locals 1

    const-class v0, Lc6/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/j;

    return-object p0
.end method

.method public static values()[Lc6/j;
    .locals 1

    sget-object v0, Lc6/j;->o:[Lc6/j;

    invoke-virtual {v0}, [Lc6/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/j;

    return-object v0
.end method
