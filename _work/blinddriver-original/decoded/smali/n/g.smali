.class public final enum Ln/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Ln/g;

.field public static final enum m:Ln/g;

.field public static final synthetic n:[Ln/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln/g;

    const-string v1, "BoundReached"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/g;->l:Ln/g;

    new-instance v1, Ln/g;

    const-string v2, "Finished"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln/g;->m:Ln/g;

    filled-new-array {v0, v1}, [Ln/g;

    move-result-object v0

    sput-object v0, Ln/g;->n:[Ln/g;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln/g;
    .locals 1

    const-class v0, Ln/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln/g;

    return-object p0
.end method

.method public static values()[Ln/g;
    .locals 1

    sget-object v0, Ln/g;->n:[Ln/g;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/g;

    return-object v0
.end method
