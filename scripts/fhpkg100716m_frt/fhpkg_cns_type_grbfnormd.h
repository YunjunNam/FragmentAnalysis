// Response function for a "grbfnormd" cell.

#PART start

    float normsq = 0.0f; // Squared L2 norm of feature patch.

    res = 0.0f;
    float rfRatio = (float)rfCount / (float)RFCOUNTMIN;

#PART middle

    normsq += w * w;

    float diff = v - w;
    res -= diff * diff;

#PART end

    if (normsq == 0.0f) normsq = 0.00000001f;

    res = expf(res / (2.0f * SIGMA * SIGMA * normsq * rfRatio * rfRatio));
