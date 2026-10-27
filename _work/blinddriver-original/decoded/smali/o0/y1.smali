.class public final Lo0/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/z1;


# static fields
.field public static final a:Lo0/y1;

.field public static final b:Ln/r0;

.field public static final c:Ln/r0;

.field public static final d:Ln/r0;

.field public static final e:Ln/r0;

.field public static final f:Ln/r0;

.field public static final g:Ln/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo0/y1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/y1;->a:Lo0/y1;

    const v0, 0x3f666666    # 0.9f

    const/high16 v1, 0x442f0000    # 700.0f

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v1

    sput-object v1, Lo0/y1;->b:Ln/r0;

    const/high16 v1, 0x44af0000    # 1400.0f

    invoke-static {v0, v1, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v1

    sput-object v1, Lo0/y1;->c:Ln/r0;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v0, v1, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Lo0/y1;->d:Ln/r0;

    const/high16 v0, 0x44c80000    # 1600.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Lo0/y1;->e:Ln/r0;

    const v0, 0x456d8000    # 3800.0f

    invoke-static {v1, v0, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Lo0/y1;->f:Ln/r0;

    const/high16 v0, 0x44480000    # 800.0f

    invoke-static {v1, v0, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Lo0/y1;->g:Ln/r0;

    return-void
.end method
