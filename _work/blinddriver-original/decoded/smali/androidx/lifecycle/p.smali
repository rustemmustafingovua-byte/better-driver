.class public final enum Landroidx/lifecycle/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Landroidx/lifecycle/p;

.field public static final enum m:Landroidx/lifecycle/p;

.field public static final enum n:Landroidx/lifecycle/p;

.field public static final enum o:Landroidx/lifecycle/p;

.field public static final enum p:Landroidx/lifecycle/p;

.field public static final synthetic q:[Landroidx/lifecycle/p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/lifecycle/p;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    new-instance v1, Landroidx/lifecycle/p;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    new-instance v2, Landroidx/lifecycle/p;

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/lifecycle/p;->n:Landroidx/lifecycle/p;

    new-instance v3, Landroidx/lifecycle/p;

    const-string v4, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/p;->o:Landroidx/lifecycle/p;

    new-instance v4, Landroidx/lifecycle/p;

    const-string v5, "RESUMED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/lifecycle/p;->p:Landroidx/lifecycle/p;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/lifecycle/p;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/p;->q:[Landroidx/lifecycle/p;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/p;
    .locals 1

    const-class v0, Landroidx/lifecycle/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/p;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/p;
    .locals 1

    sget-object v0, Landroidx/lifecycle/p;->q:[Landroidx/lifecycle/p;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/p;

    return-object v0
.end method
