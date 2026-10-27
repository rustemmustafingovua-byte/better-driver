.class public final enum Lc6/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lc6/i;

.field public static final synthetic m:[Lc6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc6/i;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lc6/i;

    const-string v2, "NON_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lc6/i;

    const-string v3, "NON_DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lc6/i;

    const-string v4, "NON_EMPTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lc6/i;

    const-string v5, "DEFAULT_INCLUSION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lc6/i;->l:Lc6/i;

    filled-new-array {v0, v1, v2, v3, v4}, [Lc6/i;

    move-result-object v0

    sput-object v0, Lc6/i;->m:[Lc6/i;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/i;
    .locals 1

    const-class v0, Lc6/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/i;

    return-object p0
.end method

.method public static values()[Lc6/i;
    .locals 1

    sget-object v0, Lc6/i;->m:[Lc6/i;

    invoke-virtual {v0}, [Lc6/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/i;

    return-object v0
.end method
