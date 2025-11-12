import { z } from 'zod';

const userValidationSchema = z.object({
  password: z.coerce
    .string()
    .min(1, { message: 'Password is required' })
    .max(20, { message: 'Password cannot be more than 20 characters' })
    .optional(),
});

export const UserValidation = {
  userValidationSchema,
};
