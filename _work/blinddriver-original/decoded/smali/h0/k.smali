.class public final enum Lh0/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lh0/k;

.field public static final enum m:Lh0/k;

.field public static final enum n:Lh0/k;

.field public static final synthetic o:[Lh0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lh0/k;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh0/k;->l:Lh0/k;

    new-instance v1, Lh0/k;

    const-string v2, "Detached"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh0/k;->m:Lh0/k;

    new-instance v2, Lh0/k;

    const-string v3, "Attached"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh0/k;->n:Lh0/k;

    filled-new-array {v0, v1, v2}, [Lh0/k;

    move-result-object v0

    sput-object v0, Lh0/k;->o:[Lh0/k;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh0/k;
    .locals 1

    const-class v0, Lh0/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh0/k;

    return-object p0
.end method

.method public static values()[Lh0/k;
    .locals 1

    sget-object v0, Lh0/k;->o:[Lh0/k;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh0/k;

    return-object v0
.end method
