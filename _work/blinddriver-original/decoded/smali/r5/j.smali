.class public final enum Lr5/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/j;

.field public static final enum m:Lr5/j;

.field public static final enum n:Lr5/j;

.field public static final synthetic o:[Lr5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr5/j;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/j;->l:Lr5/j;

    new-instance v1, Lr5/j;

    const-string v2, "DELEGATING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lr5/j;

    const-string v3, "PROPERTIES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr5/j;->m:Lr5/j;

    new-instance v3, Lr5/j;

    const-string v4, "DISABLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr5/j;->n:Lr5/j;

    filled-new-array {v0, v1, v2, v3}, [Lr5/j;

    move-result-object v0

    sput-object v0, Lr5/j;->o:[Lr5/j;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/j;
    .locals 1

    const-class v0, Lr5/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/j;

    return-object p0
.end method

.method public static values()[Lr5/j;
    .locals 1

    sget-object v0, Lr5/j;->o:[Lr5/j;

    invoke-virtual {v0}, [Lr5/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/j;

    return-object v0
.end method
